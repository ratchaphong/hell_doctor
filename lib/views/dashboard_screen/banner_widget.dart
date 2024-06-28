import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

import '../../gen/assets.gen.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: const Color.fromARGB(153, 236, 232, 232),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Early protection for\nyour family health",
                  style: GoogleFonts.robotoMono(
                    fontSize: FontSizes.sizeBase,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * 0.026,
                  // width: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 138, 109),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      "Learn More",
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeXs,
                        color: ColorResources.white1,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            // color: ColorResources.darkGreen1,
            // height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.3,
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              // "lib/icons/female.png",
              Assets.icons.female.path,
            ),
            // child: Text(
            //   "lib/icons/female.png",
            //   style: GoogleFonts.robotoMono(
            //     fontSize: FontSizes.sizeBase,
            //     fontWeight: FontWeight.w700,
            //     color: Colors.black87,
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}
