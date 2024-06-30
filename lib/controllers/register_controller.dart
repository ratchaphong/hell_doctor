// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../models/register_model.dart';
import '../models/register_request.dart';
import '../models/register_response.dart';
import '../service/register_client.dart';

class RegisterController extends GetxController {
  final RegisterClient _registerClient = RegisterClient(Dio());
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  var isLoading = false.obs;
  var registration = RegisterModel(
    user: '',
    firstName: '',
    lastName: '',
    email: '',
    phone: '',
    password: '',
    gender: '',
    age: 0,
  ).obs;

  Future<void> registerUser({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String password,
    required int age,
  }) async {
    registration.update((reg) {
      reg?.firstName = firstName;
      reg?.lastName = lastName;
      reg?.email = email;
      reg?.phone = phone;
      reg?.password = password;
      reg?.age = age;
    });
    print('firstName registration: ${registration.value.firstName}');
    print('lastName registration: ${registration.value.lastName}');
    print('email registration: ${registration.value.email}');
    print('phone registration: ${registration.value.phone}');
    print('password registration: ${registration.value.password}');
    print('gender registration: ${registration.value.gender}');
    print('age registration: ${registration.value.age}');
    isLoading(true);
    await Future.delayed(const Duration(seconds: 1));
    try {
      isLoading(false);
      await _registerClient.register(RegisterRequest(
        firstName: registration.value.firstName,
        lastName: registration.value.lastName,
        email: registration.value.email,
        phone: registration.value.phone,
        password: registration.value.password,
        gender: registration.value.gender,
        age: registration.value.age,
      ));
      RegisterResponse response = RegisterResponse(
        statusCode: 201,
        code: "SUCCESS",
        message: 'Registration successful',
      );
      print(response);
      if (response.statusCode == 201) {
        Get.offAllNamed('/login');
        Get.snackbar('Success', response.message);
      } else {
        Get.snackbar('Error', response.message);
      }
    } catch (e) {
      isLoading(false);
      Get.snackbar('Login Failed', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void updateGender(String value) {
    registration.update((reg) {
      reg?.gender = value;
    });
  }
}
