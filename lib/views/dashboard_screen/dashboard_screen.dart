import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/views/article_screen/article_screen.dart';
import 'package:hell_care/views/doctor_search_screen.dart';
import 'package:hell_care/views/find_doctor_screen/find_doctor_screen.dart';

import '../../gen/assets.gen.dart';
import '../../utilities/theme.dart';
import '../../widgets/custom_text_field.dart';
import '../find_doctor_screen/doctor_list.dart';
import '../find_doctor_screen/list_icons.dart';
import 'article.dart';
import 'banner_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorResources.white1,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset(
                // "lib/icons/bell.png",
                Assets.icons.bell.path,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ],
        title: Column(
          children: [
            // const SizedBox(
            //   height: 48,
            // ),
            Text(
              "Find your desire\nhealth solution",
              style: GoogleFonts.robotoMono(
                color: const Color.fromARGB(255, 51, 47, 47),
                fontSize: FontSizes.sizeLg,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        toolbarHeight: 130,
        elevation: 0,
      ),
      backgroundColor: ColorResources.white1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              // Center(
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.06,
              //     width: MediaQuery.of(context).size.width * 0.9,
              //     decoration: const BoxDecoration(),
              //     child: TextField(
              //       onTap: () {
              //         // Navigator.push(
              //         //     context,
              //         //     PageTransition(
              //         //         type: PageTransitionType.rightToLeft,
              //         //         child: find_doctor()));
              //       },
              //       textAlign: TextAlign.start,
              //       textInputAction: TextInputAction.none,
              //       autofocus: false,
              //       obscureText: false,
              //       keyboardType: TextInputType.emailAddress,
              //       textAlignVertical: TextAlignVertical.center,
              //       decoration: InputDecoration(
              //         focusColor: Colors.black26,
              //         fillColor: const Color.fromARGB(255, 247, 247, 247),
              //         filled: true,
              //         prefixIcon: Padding(
              //           padding: const EdgeInsets.symmetric(
              //             horizontal: 10,
              //           ),
              //           child: Container(
              //             height: 10,
              //             width: 10,
              //             child: Image.asset(
              //               // "lib/icons/search.png",
              //               Assets.icons.search.path,
              //               filterQuality: FilterQuality.high,
              //             ),
              //           ),
              //         ),
              //         prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
              //         label: const Text("Search doctor, drugs, articles..."),
              //         floatingLabelBehavior: FloatingLabelBehavior.never,
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide.none,
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CustomTextField(
                  controller: searchController,
                  hintText: 'Search doctor, drugs, articles...',
                  iconPath: Assets.icons.search.path,
                  onTap: () {
                    Get.to(
                      () => const FindDoctorScreen(),
                      transition: Transition.rightToLeft,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListIcons(
                    icon: Assets.icons.doctor.path,
                    text: "Doctor",
                  ),
                  ListIcons(
                    icon: Assets.icons.pharmacy.path,
                    text: "Pharmacy",
                  ),
                  ListIcons(
                    icon: Assets.icons.hospital.path,
                    text: "Hospital",
                  ),
                  ListIcons(
                    icon: Assets.icons.ambulance.path,
                    text: "Ambulance",
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const BannerWidget(),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Doctor",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeLg,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(() => const DoctorSearchScreen(),
                          transition: Transition.rightToLeft);
                    },
                    child: Text(
                      "See all",
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeBase,
                        color: const Color.fromARGB(255, 3, 190, 150),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 180,
                // width: 400,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    DoctorList(
                      distance: "130m Away",
                      image: Assets.icons.maleDoctor.path,
                      maintext: "Dr. Marcus Horizon",
                      numRating: "4.7",
                      subtext: "Chardiologist",
                    ),
                    DoctorList(
                        distance: "130m Away",
                        image: Assets.icons.docto3.path,
                        maintext: "Dr. Maria Elena",
                        numRating: "4.6",
                        subtext: "Psychologist"),
                    DoctorList(
                        distance: "2km away",
                        image: Assets.icons.doctor2.path,
                        maintext: "Dr. Stevi Jessi",
                        numRating: "4.8",
                        subtext: "Orthopedist"),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Health article",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeLg,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const ArticleScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Text(
                      "See all",
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeBase,
                        color: const Color.fromARGB(255, 3, 190, 150),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Article(
                  image: Assets.images.article1.path,
                  dateText: "Jun 10, 2021 ",
                  duration: "5min read",
                  mainText:
                      "The 25 Healthiest Fruits You Can Eat,\nAccording to a Nutritionist",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
