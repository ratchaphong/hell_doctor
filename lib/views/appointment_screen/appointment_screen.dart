import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';
import 'package:hell_care/views/find_doctor_screen/doctor_list.dart';

// import '../doctor_details_screen/doctor_details_screen.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

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
            //   () => const DoctorDetailsScreen(),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 4,
            ),
            DoctorList(
              distance: "800m away",
              image: Assets.icons.maleDoctor.path,
              maintext: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist",
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Date",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "Change",
                    style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeSm,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color: const Color.fromARGB(137, 56, 56, 56)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.1300,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 247, 247),
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          image: AssetImage(
                            // "lib/icons/callender.png",
                            Assets.icons.callender.path,
                          ),
                          filterQuality: FilterQuality.high,
                        )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Text(
                      "Wednesday, Jun 23, 2021 | 10:00 AM",
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeSm,
                        fontWeight: FontWeight.w500,
                        color: ColorResources.black1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reasion",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "Change",
                    style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeSm,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color: const Color.fromARGB(137, 56, 56, 56)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                color: Colors.black12,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.1300,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 247, 247, 247),
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          image: AssetImage(
                            // "lib/icons/pencil.png",
                            Assets.icons.pencil.path,
                          ),
                          filterQuality: FilterQuality.high,
                        )),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Chest pain",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      fontWeight: FontWeight.w500,
                      color: ColorResources.black1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                color: Colors.black12,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Payment Details",
                    style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeBase,
                        fontWeight: FontWeight.w600,
                        color: ColorResources.black1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Consultation",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      color: ColorResources.black4,
                    ),
                  ),
                  Text(
                    "\$60",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Admin Fee",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      color: ColorResources.black4,
                    ),
                  ),
                  Text(
                    "\$01.00",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Aditional Discount",
                    style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeBase,
                        color: ColorResources.black4),
                  ),
                  Text(
                    "-",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      color: ColorResources.black1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\$61.00",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      color: const Color.fromARGB(255, 4, 92, 58),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                color: Colors.black12,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Payment Method",
                    style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeBase,
                        fontWeight: FontWeight.w600,
                        color: ColorResources.black1),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Visa",
                        style: GoogleFonts.robotoMono(
                            fontStyle: FontStyle.italic,
                            fontSize: FontSizes.sizeLg,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 38, 39, 117)),
                      ),
                      Text(
                        "Change",
                        style: GoogleFonts.robotoMono(
                            fontSize: FontSizes.sizeSm,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0,
                            color: const Color.fromARGB(137, 56, 56, 56)),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.2100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeBase,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                              color: const Color.fromARGB(137, 56, 56, 56),
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "  \$61",
                            style: GoogleFonts.inter(
                              fontSize: FontSizes.sizeLg,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0,
                              color: ColorResources.black1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.4300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 2, 179, 149),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Book",
                              style: GoogleFonts.robotoMono(
                                fontSize: FontSizes.sizeBase,
                                color: ColorResources.white1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
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
      ),
    );
  }
}
