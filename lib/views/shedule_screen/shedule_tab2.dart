import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

class SheduleTab2 extends StatelessWidget {
  const SheduleTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Nothing to show",
              style: GoogleFonts.robotoMono(
                fontSize: FontSizes.sizeLg,
                fontWeight: FontWeight.bold,
                color: ColorResources.grey1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
