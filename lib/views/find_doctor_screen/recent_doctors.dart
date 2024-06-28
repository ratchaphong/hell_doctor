import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/theme.dart';

class RecentDotors extends StatelessWidget {
  final String imagePath;
  final String name;

  const RecentDotors({
    super.key,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1400,
      width: MediaQuery.of(context).size.width * 0.2900,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.100,
            width: MediaQuery.of(context).size.width * 0.1900,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: ColorResources.white1,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            alignment: Alignment.center,
            // child: Text(
            //   name,
            //   style: TextStyle(
            //     color: ColorResources.white1,
            //     fontSize: FontSizes.sizeBase,
            //   ),
            // ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            name,
            style: GoogleFonts.robotoMono(
              fontSize: FontSizes.sizeXs,
              fontWeight: FontWeight.w700,
              color: ColorResources.black1,
            ),
          ),
        ],
      ),
    );
  }
}
