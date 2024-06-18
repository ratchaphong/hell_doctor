import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: "Username"),
              onChanged: (value) => controller.user.value = value,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
              onChanged: (value) => controller.password.value = value,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.isLoading.value
                  ? null
                  : () {
                      controller.checkUser();
                    },
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => RegisterScreen());
              },
              child: const Text("No account? Register here."),
            ),
          ],
        ),
      ),
    );
  }
}
