import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed('/login');
    });

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 77, 60),
      body: Center(
        child: Assets.images.logo.image(
          width: MediaQuery.of(context).size.height * 01,
          height: MediaQuery.of(context).size.height * 0.2,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
