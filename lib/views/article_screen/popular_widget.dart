import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/theme.dart';

class PopularWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double height;
  final double width;

  const PopularWidget({
    super.key,
    required this.text,
    required this.onTap,
    this.height = 20.0,
    this.width = 120.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 2, 173, 131),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.robotoMono(
              fontSize: FontSizes.sizeBase,
              fontWeight: FontWeight.w600,
              color: ColorResources.white1,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
