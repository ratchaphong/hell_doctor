import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';

import '../../controllers/profile_controller.dart';
import 'custom_info_widget.dart';
import 'profile_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController profileController = Get.put(ProfileController());

  @override
  void initState() {
    super.initState();
    Get.find<ProfileController>().onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.lightGreen3,
      body: Obx(() {
        if (profileController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        var userProfile = profileController.userProfile.value;
        if (userProfile == null) {
          return Center(
            child: Text(
              "No user profile available",
              style: GoogleFonts.robotoMono(
                fontSize: FontSizes.sizeBase,
                fontWeight: FontWeight.w600,
                color: ColorResources.white1,
              ),
            ),
          );
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 48,
              ),
              Center(
                child: Stack(
                  children: [
                    const SizedBox(
                      height: 48,
                    ),
                    Container(
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: ColorResources.white1,
                        ),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1))
                        ],
                        shape: BoxShape.circle,
                        // image: const DecorationImage(
                        //   image: AssetImage("lib/icons/avatar.png"),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                      child: Assets.icons.avatar.image(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: ColorResources.white1,
                          ),
                          color: ColorResources.white1,
                          // image: const DecorationImage(
                          //     image: AssetImage("lib/icons/camra.png")),
                        ),
                        // child: Assets.icons.camra.image(
                        //   filterQuality: FilterQuality.high,
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userProfile.data.username,
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      fontWeight: FontWeight.w600,
                      color: ColorResources.white1,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomInfoWidget(
                      title: "Calories",
                      // data: "103lbs",
                      data: "${userProfile.data.stats.calories}lbs",
                      iconPath: Assets.icons.callories.path,
                    ),
                    Container(
                      height: 48,
                      width: 1,
                      color: ColorResources.white1,
                    ),
                    CustomInfoWidget(
                      title: "Weight",
                      // data: "756cal",
                      data: "${userProfile.data.stats.weight}cal",
                      iconPath: Assets.icons.weight.path,
                    ),
                    Container(
                      height: 48,
                      width: 1,
                      color: ColorResources.white1,
                    ),
                    CustomInfoWidget(
                      title: "Heart rate",
                      // data: "215bpm",
                      data: "${userProfile.data.stats.heartRate}bpm",
                      iconPath: Assets.icons.heart.path,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Container(
                height: 550,
                // width: double.infinity,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: ColorResources.white1,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 48,
                    ),
                    ProfileList(
                      image: Assets.icons.heart2.path,
                      title: "My Saved",
                      color: ColorResources.black1,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Divider(),
                    ),
                    ProfileList(
                      image: Assets.icons.appoint.path,
                      title: "Appointmnet",
                      color: ColorResources.black1,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Divider(),
                    ),
                    ProfileList(
                      image: Assets.icons.chat.path,
                      title: "FAQs",
                      color: ColorResources.black1,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Divider(),
                    ),
                    ProfileList(
                      image: Assets.icons.pay.path,
                      title: "Payment Method",
                      color: ColorResources.black1,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Divider(),
                    ),
                    ProfileList(
                      image: Assets.icons.logout.path,
                      title: "Log out",
                      color: ColorResources.red1,
                      onTap: () {
                        profileController.logout();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
