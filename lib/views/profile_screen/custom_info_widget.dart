import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/theme.dart';

class CustomInfoWidget extends StatelessWidget {
  final String title;
  final String data;
  final String iconPath;

  const CustomInfoWidget({
    super.key,
    required this.title,
    required this.data,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
            child: Image.asset(
              iconPath,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.robotoMono(
              fontSize: FontSizes.sizeXs,
              fontWeight: FontWeight.w600,
              color: ColorResources.white5,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            data,
            style: GoogleFonts.robotoMono(
              fontSize: FontSizes.sizeXs,
              fontWeight: FontWeight.w600,
              color: ColorResources.white1,
            ),
          ),
        ],
      ),
    );
  }
}
