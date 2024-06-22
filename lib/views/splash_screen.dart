// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hell_care/views/on_boarding/on_boarding_screen.dart';
import '../gen/assets.gen.dart';
import '../utilities/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkSavedCredentialsAndNavigate();
  }

  Future<void> checkSavedCredentialsAndNavigate() async {
    final prefs = await SharedPreferences.getInstance();
    String? user = prefs.getString('user');
    String? lastLoginString = prefs.getString('lastLogin');

    if (user != null && lastLoginString != null) {
      print("Last login by $user at $lastLoginString");
      DateTime lastLogin = DateTime.tryParse(lastLoginString) ?? DateTime.now();
      int differenceInMinutes = DateTime.now().difference(lastLogin).inMinutes;
      print("The time has passed $differenceInMinutes minutes.");
      if (differenceInMinutes > 10) {
        await prefs.remove('lastLogin');
        lastLoginString = null;
        print('User credentials cleared due to inactivity.');
      }
    }
    bool isLoggedIn = user != null && lastLoginString != null;

    Future.delayed(const Duration(seconds: 3), () {
      if (isLoggedIn) {
        Get.offAllNamed('/home');
      } else {
        if (user != null) {
          Get.offAllNamed('/login');
        } else {
          Get.to(() => const OnBoarding());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.darkGreen1,
      body: Center(
        child: Assets.images.logo.image(
          width: MediaQuery.of(context).size.height * 1,
          height: MediaQuery.of(context).size.height * 0.2,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
