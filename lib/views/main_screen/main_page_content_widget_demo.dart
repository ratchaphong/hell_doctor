import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

class MainPageContentWidget extends StatelessWidget {
  final String title;
  final MotionTabBarController controller;
  const MainPageContentWidget({
    required this.title,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 50),
        const Text('Go to "X" page programmatically'),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () => controller.index = 0,
          child: const Text('Dashboard Page'),
        ),
        ElevatedButton(
          onPressed: () => controller.index = 1,
          child: const Text('Home Page'),
        ),
        ElevatedButton(
          onPressed: () => controller.index = 2,
          child: const Text('Profile Page'),
        ),
        ElevatedButton(
          onPressed: () => controller.index = 3,
          child: const Text('Settings Page'),
        ),
      ],
    ));
  }
}
