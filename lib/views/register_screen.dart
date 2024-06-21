import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';

import '../controllers/register_controller.dart';
import '../widgets/custom_text_field.dart';
import 'login_screen.dart';
// import '../utilities/options.dart';
// import '../utilities/validators.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegisterController controller = Get.put(RegisterController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 48,
                    ),
                    // TextFormField(
                    //   controller: controller.firstNameController,
                    //   decoration:
                    //       const InputDecoration(labelText: 'First name'),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter your first name';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    CustomTextField(
                      controller: controller.firstNameController,
                      hintText: 'First name',
                      iconPath: Assets.icons.person.path,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // TextFormField(
                    //   controller: controller.lastNameController,
                    //   decoration: const InputDecoration(labelText: 'Last name'),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter your last name';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    CustomTextField(
                      controller: controller.lastNameController,
                      hintText: 'Last name',
                      iconPath: Assets.icons.person.path,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomTextField(
                      controller: controller.emailController,
                      hintText: 'Email',
                      iconPath: Assets.icons.email.path,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomTextField(
                      controller: controller.passwordController,
                      hintText: 'Password',
                      iconPath: Assets.icons.lock.path,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                        Text(
                          "I agree to the terms and conditions",
                          style: GoogleFonts.robotoMono(
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    // TextFormField(
                    //   controller: controller.ageController,
                    //   keyboardType: TextInputType.number,
                    //   decoration: const InputDecoration(labelText: 'Age'),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter your age';
                    //     }
                    //     if (!isNumeric(value)) {
                    //       return 'Please enter a valid number';
                    //     } else {
                    //       int? age = int.tryParse(value);
                    //       if (age == null || age <= 0) {
                    //         return 'Age must be greater than 0';
                    //       }
                    //       return null;
                    //     }
                    //   },
                    // ),
                    // DropdownButton<String>(
                    //   value: controller.registration.value.gender.isEmpty
                    //       ? null
                    //       : controller.registration.value.gender,
                    //   hint: const Text('Select Gender'),
                    //   isExpanded: true,
                    //   items: genderOptions.map((Map<String, String> item) {
                    //     return DropdownMenuItem<String>(
                    //       value: item['value'],
                    //       child: Text(item['label']!),
                    //     );
                    //   }).toList(),
                    //   onChanged: (value) {
                    //     controller.updateGender(value!);
                    //   },
                    // ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            controller.registerUser(
                              firstName: controller.firstNameController.text,
                              lastName: controller.lastNameController.text,
                              email: controller.emailController.text,
                              phone: controller.phoneController.text,
                              password: controller.passwordController.text,
                              age:
                                  int.tryParse(controller.ageController.text) ??
                                      0,
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 3, 190, 150),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          "Create account",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoMono(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: GoogleFonts.robotoMono(
                              fontSize: 14, color: Colors.black87),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const LoginScreen());
                          },
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.robotoMono(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 3, 190, 150),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
    );
  }
}
