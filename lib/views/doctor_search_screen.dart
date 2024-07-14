import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';
import 'package:hell_care/views/find_doctor_screen/doctor_list.dart';
import 'package:hell_care/views/main_screen/main_screen.dart';

class DoctorSearchScreen extends StatelessWidget {
  const DoctorSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.off(() => const MainScreen(), transition: Transition.fade);
          },
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                // "lib/icons/back1.png",
                Assets.icons.back1.path,
              ),
            )),
          ),
        ),
        title: Text(
          "Top Doctors",
          style: GoogleFonts.robotoMono(
            color: ColorResources.black1,
            fontSize: FontSizes.sizeLg,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  // "lib/icons/more.png",
                  Assets.icons.more.path,
                ),
              )),
            ),
          ),
        ],
        backgroundColor: ColorResources.white1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     PageTransition(
                  //         type: PageTransitionType.rightToLeft,
                  //         child: DoctorDetails()));
                },
                child: DoctorList(
                    distance: "800m Away",
                    // image: "lib/icons/male-doctor.png",
                    image: Assets.icons.maleDoctor.path,
                    maintext: "Dr. Marcus Horizon",
                    numRating: "4.7",
                    subtext: "Chardiologist"),
              ),
              GestureDetector(
                child: DoctorList(
                    distance: "800m Away",
                    // image: "lib/icons/docto3.png",
                    image: Assets.icons.docto3.path,
                    maintext: "Dr. Marcus Horizon",
                    numRating: "4.7",
                    subtext: "Chardiologist"),
              ),
              GestureDetector(
                child: DoctorList(
                    distance: "800m Away",
                    // image: "lib/icons/doctor2.png",
                    image: Assets.icons.doctor2.path,
                    maintext: "Dr. Marcus Horizon",
                    numRating: "4.7",
                    subtext: "Chardiologist"),
              ),
              GestureDetector(
                child: DoctorList(
                    distance: "800m Away",
                    // image: "lib/icons/black-doctor.png",
                    image: Assets.icons.blackDoctor.path,
                    maintext: "Dr. Marcus Horizon",
                    numRating: "4.7",
                    subtext: "Chardiologist"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
