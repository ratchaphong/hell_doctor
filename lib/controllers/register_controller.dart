// ignore_for_file: avoid_print

import 'package:get/get.dart';

import '../models/register_model.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs;
  var registration = Registration(
    email: '',
    phone: '',
    password: '',
    gender: '',
    age: 0,
    firstName: '',
    lastName: '',
  ).obs;

  Future<void> registerUser({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String password,
    required String gender,
    required int age,
  }) async {
    isLoading(true);
    await Future.delayed(const Duration(seconds: 2));
    registration.update((reg) {
      reg?.firstName = firstName;
      reg?.lastName = lastName;
      reg?.email = email;
      reg?.phone = phone;
      reg?.password = password;
      reg?.gender = gender;
      reg?.age = age;
    });
    print('email registration: ${registration.value.email}');
    print('password registration: ${registration.value.password}');

    isLoading(false);
    RegistrationResponse response =
        RegistrationResponse(success: true, message: "Registration successful");
    if (response.success) {
      Get.offAllNamed('/login');
      Get.snackbar('Success', response.message);
    } else {
      Get.snackbar('Error', response.message);
    }
  }

  void updateGender(String value) {
    registration.update((reg) {
      reg?.gender = value;
    });
  }
}
