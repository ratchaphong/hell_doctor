import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/theme.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String iconPath;
  final TextEditingController controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.iconPath,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      keyboardType: TextInputType.emailAddress,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        focusColor: ColorResources.black2,
        fillColor: ColorResources.white2,
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Image.asset(
            iconPath,
            width: 24,
            height: 24,
          ),
        ),
        prefixIconColor: ColorResources.lightGreen1,
        label: Text(
          hintText,
          style: GoogleFonts.robotoMono(
            fontSize: FontSizes.sizeBase,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      validator: validator,
      onChanged: onChanged,
      onTap: onTap, // ใช้งาน onTap ใน TextFormField
    );
  }
}
