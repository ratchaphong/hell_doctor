import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../gen/assets.gen.dart';
import '../../utilities/theme.dart';

class OnBoard2Screen extends StatelessWidget {
  const OnBoard2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorResources.white1,
      child: Column(
        children: [
          const SizedBox(
            height: 48,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //       alignment: Alignment.bottomCenter,
              //       image: AssetImage(
              //         "images/doctor2.png",
              //       ),
              //       filterQuality: FilterQuality.high),
              // ),
              child: Assets.images.doctor2.image()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ColorResources.white2,
                        ColorResources.white1,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      "Find a lot of specialist\ndoctors in one place",
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeLg,
                        fontWeight: FontWeight.bold,
                        color: ColorResources.black3,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
