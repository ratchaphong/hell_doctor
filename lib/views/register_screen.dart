import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/register_controller.dart';
import '../utilities/options.dart';
import '../utilities/validators.dart';

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
      body: Obx(() => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  TextFormField(
                    controller: controller.firstNameController,
                    decoration: const InputDecoration(labelText: 'First name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: controller.lastNameController,
                    decoration: const InputDecoration(labelText: 'Last name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(labelText: 'Email')),
                  TextFormField(
                      controller: controller.phoneController,
                      decoration: const InputDecoration(labelText: 'Phone')),
                  TextFormField(
                      controller: controller.passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(labelText: 'Password')),
                  TextFormField(
                    controller: controller.ageController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Age'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your age';
                      }
                      if (!isNumeric(value)) {
                        return 'Please enter a valid number';
                      } else {
                        int? age = int.tryParse(value);
                        if (age == null || age <= 0) {
                          return 'Age must be greater than 0';
                        }
                        return null;
                      }
                    },
                  ),
                  DropdownButton<String>(
                    value: controller.registration.value.gender.isEmpty
                        ? null
                        : controller.registration.value.gender,
                    hint: const Text('Select Gender'),
                    isExpanded: true,
                    items: genderOptions.map((Map<String, String> item) {
                      return DropdownMenuItem<String>(
                        value: item['value'],
                        child: Text(item['label']!),
                      );
                    }).toList(),
                    onChanged: (value) {
                      controller.updateGender(value!);
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controller.registerUser(
                          firstName: controller.firstNameController.text,
                          lastName: controller.lastNameController.text,
                          email: controller.emailController.text,
                          phone: controller.phoneController.text,
                          password: controller.passwordController.text,
                          age: int.tryParse(controller.ageController.text) ?? 0,
                        );
                      }
                    },
                    child: const Text('Register'),
                  ),
                ],
              ),
            )),
    );
  }
}
