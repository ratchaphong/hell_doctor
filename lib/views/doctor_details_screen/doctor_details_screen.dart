import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/views/appointment_screen/appointment_screen.dart';
// import 'package:hell_care/views/find_doctor_screen/find_doctor_screen.dart';

import '../../gen/assets.gen.dart';
import '../../utilities/theme.dart';
import '../find_doctor_screen/doctor_list.dart';
import 'date_select.dart';
import 'time_select.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  bool showExtendedText = false;

  void toggleTextVisibility() {
    setState(() {
      showExtendedText = !showExtendedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      appBar: AppBar(
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            // child: Image.asset("lib/icons/back2.png"),
            child: Assets.icons.back1.image(),
          ),
          onPressed: () {
            // Navigator.of(context).pop();
            Get.back();
            // Get.to(
            //   () => const FindDoctorScreen(),
            //   transition: Transition.fade,
            // );
          },
        ),
        title: Text(
          "Top Doctors",
          style: GoogleFonts.robotoMono(
            color: ColorResources.black6,
            fontSize: FontSizes.sizeLg,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 96,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                image: DecorationImage(
                  // image: AssetImage("lib/icons/more.png"),
                  image: AssetImage(Assets.icons.more.path),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: ColorResources.white1,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              DoctorList(
                distance: "800m away",
                image: Assets.icons.maleDoctor.path,
                maintext: "Dr. Marcus Horizon",
                numRating: "4.7",
                subtext: "Cardiologist",
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: toggleTextVisibility,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        showExtendedText
                            ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free lines do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam consectetur adipiscing elit. Sed euismod ..."
                            : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free ... ",
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 37, 37, 37),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        showExtendedText ? "Read less" : "Read more",
                        style: TextStyle(
                          color: showExtendedText
                              ? const Color.fromARGB(255, 1, 128, 111)
                              : const Color.fromARGB(255, 1, 128,
                                  111), // Change color based on visibility
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 3,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      DateSelect(date: "21", maintext: "Mon"),
                      DateSelect(date: "22", maintext: "Tue"),
                      DateSelect(date: "23", maintext: "Wed"),
                      DateSelect(date: "24", maintext: "Thu"),
                      DateSelect(date: "25", maintext: "Fri"),
                      DateSelect(date: "26", maintext: "Sat"),
                      DateSelect(date: "27", maintext: "Sun"),
                      DateSelect(date: "28", maintext: "Mon"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Divider(
                  color: Colors.black12,
                  thickness: 1,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                // height: MediaQuery.of(context).size.height * 0.2400,
                height: MediaQuery.of(context).size.height * 0.11,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      // height: MediaQuery.of(context).size.height * 0.2500,
                      width: MediaQuery.of(context).size.width * 0.2900,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TimeSelect(mainText: "09:00 AM"),
                          TimeSelect(mainText: "01:00 AM"),
                          // TimeSelect(mainText: "04:00 AM"),
                          // TimeSelect(mainText: "07:00 AM"),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: 12,
                    // ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height * 0.2500,
                      width: MediaQuery.of(context).size.width * 0.2900,
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TimeSelect(mainText: "10:00 PM"),
                            TimeSelect(mainText: "02:00 PM"),
                            // TimeSelect(mainText: "07:00 PM"),
                            // TimeSelect(mainText: "09:00 PM"),
                          ]),
                    ),
                    // SizedBox(
                    //   width: 12,
                    // ),
                    SizedBox(
                      // height: MediaQuery.of(context).size.height * 0.2500,
                      width: MediaQuery.of(context).size.width * 0.2900,
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TimeSelect(mainText: "11:00 AM"),
                            TimeSelect(mainText: "03:00 PM"),
                            // TimeSelect(mainText: "08:00 PM"),
                            // TimeSelect(mainText: "10:00 AM"),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            color: ColorResources.white7,
            height: 72,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 36,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.1300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          image: AssetImage(
                            // "lib/icons/Chat.png",
                            Assets.icons.chat.path,
                          ),
                          filterQuality: FilterQuality.high),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacement(
                      //     context,
                      //     PageTransition(
                      //         type: PageTransitionType.rightToLeft,
                      //         child: appointment()));
                      Get.to(
                        () => const AppointmentScreen(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.6300,
                      decoration: BoxDecoration(
                        color: ColorResources.lightGreen5,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Book Appointment",
                            style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeBase,
                              color: ColorResources.white1,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
