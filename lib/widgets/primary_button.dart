import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorResources.lightLight1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.robotoMono(
          fontSize: FontSizes.sizeLg,
          color: ColorResources.white1,
          fontWeight: FontWeight.w500,
          letterSpacing: 0,
        ),
      ),
    );
  }
}
