import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';
import '../gen/assets.gen.dart';
import '../utilities/theme.dart';
import '../widgets/primary_button.dart';
import '../widgets/custom_text_field.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController controller = Get.put(LoginController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomTextField(
                controller: controller.userController,
                hintText: 'Username',
                iconPath: Assets.icons.person.path,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                onChanged: (value) => controller.user.value = value,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                controller: controller.passwordController,
                hintText: 'Password',
                iconPath: Assets.icons.lock.path,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onChanged: (value) => controller.password.value = value,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot your password?',
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeXs,
                        color: ColorResources.lightLight1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.9,
                child: PrimaryButton(
                  text: 'Login',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      controller.checkUser();
                    }
                  },
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      color: ColorResources.black1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const RegisterScreen());
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeBase,
                        color: ColorResources.lightLight1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
