import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/views/login_screen.dart';
import 'package:hell_care/widgets/secondary_button.dart';

import '../utilities/theme.dart';
import '../widgets/primary_button.dart';
import 'register_screen.dart';

class LoginSignInScreen extends StatelessWidget {
  const LoginSignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.height * 01,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    // "images/logo-green.png",
                    Assets.images.logoGreen.path,
                  ),
                  filterQuality: FilterQuality.high),
            ),
          ),
          Text(
            "Lets get Started!",
            style: GoogleFonts.robotoMono(
                fontSize: FontSizes.sizeLg,
                color: ColorResources.black1,
                fontWeight: FontWeight.w700,
                letterSpacing: 1),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Login to enjoy the features we've \nprovided, and stay healthy",
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoMono(
                fontSize: FontSizes.sizeBase,
                color: ColorResources.black1,
                fontWeight: FontWeight.w400,
                letterSpacing: 1),
          ),
          const SizedBox(
            height: 48,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            child: PrimaryButton(
              text: 'Login',
              onPressed: () {
                Get.to(() => const LoginScreen());
              },
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            child: SecondaryButton(
              text: 'Sign up',
              onPressed: () {
                Get.to(() => const RegisterScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
