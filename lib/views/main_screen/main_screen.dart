import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/controllers/home_controller.dart';
import 'package:hell_care/utilities/theme.dart';
import 'package:hell_care/views/dashboard_screen/dashboard_screen.dart';
import 'package:hell_care/views/main_screen/main_page_content_widget.dart';
import 'package:hell_care/views/message_screen/message_screen.dart';
import 'package:hell_care/views/shedule_screen/shedule_screen.dart';
import 'package:hell_care/widgets/loading.dart';
// import 'package:motion_tab_bar_v2/motion-badge.widget.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

import '../find_doctor_screen/find_doctor_screen.dart';
import '../profile_screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  final MainController controller = Get.put(MainController());
  @override
  void initState() {
    super.initState();
    controller.motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MotionTabBar(
          controller: controller
              .motionTabBarController, // ADD THIS if you need to change your tab programmatically
          initialSelectedTab: "Dashboard",
          useSafeArea: true,
          labels: const ["Dashboard", "Shedule", "Message", "Profile"],
          icons: const [
            Icons.dashboard,
            Icons.checklist,
            Icons.message,
            Icons.people_alt,
          ],

          badges: [
            // // Default Motion Badge Widget
            // const MotionBadgeWidget(
            //   text: '99+',
            //   textColor: Colors.white, // optional, default to Colors.white
            //   color: Colors.red, // optional, default to Colors.red
            //   size: 18, // optional, default to 18
            // ),

            // // custom badge Widget
            // Container(
            //   color: Colors.black,
            //   padding: const EdgeInsets.all(2),
            //   child: const Text(
            //     '48',
            //     style: TextStyle(
            //       fontSize: 14,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),

            // // allow null
            // null,

            // // Default Motion Badge Widget with indicator only
            // const MotionBadgeWidget(
            //   isIndicator: true,
            //   color: Colors.red, // optional, default to Colors.red
            //   size: 5, // optional, default to 5,
            //   show: true, // true / false
            // ),
          ],
          tabSize: 48,
          tabBarHeight: 56,
          textStyle: GoogleFonts.robotoMono(
            fontSize: FontSizes.sizeXs,
            fontWeight: FontWeight.w500,
            color: ColorResources.white1,
          ),
          tabIconColor: ColorResources.grey1,
          tabIconSize: 28.0,
          tabIconSelectedSize: 26.0,
          tabSelectedColor: ColorResources.lightGreen1,
          tabIconSelectedColor: ColorResources.white1,
          tabBarColor: ColorResources.darkGreen1,
          onTabItemSelected: (int value) {
            setState(() {
              controller.setPage(value);
            });
          },
        ),
        body: Obx(
          () => controller.isLoading.value
              ? const Center(child: LoadingIndicator())
              : TabBarView(
                  physics:
                      const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
                  controller: controller.motionTabBarController,
                  children: <Widget>[
                    const DashboardScreen(),
                    const SheduleScreen(),
                    const MessageScreen(),
                    const ProfileScreen(),
                    MainPageContentWidget(
                        title: "Dashboard Page",
                        controller: controller.motionTabBarController!),
                    // MainPageContentComponent(
                    //     title: "Home Page",
                    //     controller: controller.motionTabBarController!),
                    // MainPageContentComponent(
                    //     title: "Settings Page",
                    //     controller: controller.motionTabBarController!),
                  ],
                ),
        ));
  }
}
