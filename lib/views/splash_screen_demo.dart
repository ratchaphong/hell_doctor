import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../gen/assets.gen.dart';
import '../utilities/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<bool> checkSavedCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    String? user = prefs.getString('user');
    return user != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.darkGreen1,
      body: FutureBuilder<bool>(
        future: checkSavedCredentials(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data == true) {
            Future.delayed(const Duration(seconds: 3), () {
              Get.offAllNamed('/home');
            });
          } else {
            Future.delayed(const Duration(seconds: 3), () {
              Get.offAllNamed('/login');
            });
          }
          return Center(
            child: Assets.images.logo.image(
              width: MediaQuery.of(context).size.height * 0.1,
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.scaleDown,
            ),
          );
        },
      ),
    );
  }
}
