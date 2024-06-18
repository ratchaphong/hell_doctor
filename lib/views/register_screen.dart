import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final locationController = TextEditingController();
  final ageController = TextEditingController();

  final RegisterController controller = Get.put(RegisterController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Obx(() => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  TextFormField(
                    controller: firstNameController,
                    decoration: const InputDecoration(labelText: "First name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: lastNameController,
                    decoration: const InputDecoration(labelText: "Last name"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                  ),
                  TextField(
                      controller: emailController,
                      decoration: const InputDecoration(labelText: "Email")),
                  TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(labelText: "Phone")),
                  TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(labelText: "Password")),
                  TextFormField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: "Age"),
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
                    value: controller.registration.value.gender,
                    hint: const Text("Select Gender"),
                    isExpanded: true,
                    items: <String>['None', 'Male', 'Female', 'Other']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value == 'None' ? '' : value,
                        child: Text(value),
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
                          firstName: firstNameController.text,
                          lastName: lastNameController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                          password: passwordController.text,
                          gender: controller.registration.value.gender,
                          age: int.tryParse(ageController.text) ?? 0,
                        );
                      }
                    },
                    // style: ElevatedButton.styleFrom(
                    //   foregroundColor: Colors.white,
                    //   backgroundColor: const Color(0xFFE57373),
                    // ),
                    child: const Text("Register"),
                  ),
                ],
              ),
            )),
    );
  }

  bool isNumeric(String value) {
    return double.tryParse(value) != null;
  }
}
