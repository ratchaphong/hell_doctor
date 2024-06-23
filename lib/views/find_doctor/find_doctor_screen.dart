import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';

import '../../widgets/custom_text_field.dart';
import 'doctor_list.dart';
import 'list_icons.dart';
import 'recent_doctors.dart';

class FindDoctorScreen extends StatelessWidget {
  const FindDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            // child: Image.asset("lib/icons/back2.png"),
            child: Assets.icons.back2.image(),
          ),
          onPressed: () {
            // Navigator.of(context).pop();
          },
        ),
        backgroundColor: ColorResources.white1,
        title: Text(
          "Find Doctor",
          style: GoogleFonts.robotoMono(
            color: const Color.fromARGB(255, 51, 47, 47),
            fontSize: FontSizes.sizeLg,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        toolbarHeight: 130,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: ColorResources.white1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              controller: searchController,
              hintText: 'Search doctor, drugs, articles...',
              iconPath: Assets.icons.person.path,
            ),
            // Center(
            //   child: Container(
            //     height: MediaQuery.of(context).size.height * 0.06,
            //     width: MediaQuery.of(context).size.width * 0.9,
            //     decoration: const BoxDecoration(),
            //     child: TextField(
            //       textAlign: TextAlign.start,
            //       textInputAction: TextInputAction.none,
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
            //           child: SizedBox(
            //             height: MediaQuery.of(context).size.height * 0.01,
            //             width: MediaQuery.of(context).size.width * 0.01,
            //             child: Image.asset(
            //               "lib/icons/search.png",
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
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Top Doctor",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      fontWeight: FontWeight.w700,
                      color: ColorResources.black5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 2.0,
              runSpacing: 0.0,
              alignment: WrapAlignment.center,
              children: [
                ListIcons(icon: Assets.icons.doctor.path, text: "General"),
                ListIcons(icon: Assets.icons.lungs.path, text: "Lungs Prob"),
                ListIcons(icon: Assets.icons.dentist.path, text: "Dentist"),
                ListIcons(
                    icon: Assets.icons.psychology.path, text: "Psychiatrist"),
                ListIcons(icon: Assets.icons.covid.path, text: "Covid"),
                ListIcons(icon: Assets.icons.injection.path, text: "Injection"),
                ListIcons(
                    icon: Assets.icons.cardiologist.path, text: "Cardiologist"),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Recommended Doctors",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      fontWeight: FontWeight.w700,
                      color: ColorResources.black5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     PageTransition(
                //         type: PageTransitionType.rightToLeft,
                //         child: DoctorDetails()));
              },
              child: DoctorList(
                distance: "800m away",
                image: Assets.icons.maleDoctor.path,
                maintext: "Dr. Marcus Horizon",
                numRating: "4.7",
                subtext: "Chardiologist",
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Your Recent Doctors",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeBase,
                      fontWeight: FontWeight.w700,
                      color: ColorResources.black5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                RecentDotors(
                  imagePath: Assets.icons.maleDoctor.path,
                  name: "Dr. Marcus",
                ),
                RecentDotors(
                  imagePath: Assets.icons.femaleDoctor.path,
                  name: "Dr. Maria",
                ),
                RecentDotors(
                  imagePath: Assets.icons.blackDoctor.path,
                  name: "Dr. Luke",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
