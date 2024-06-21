import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String iconPath;
  final TextEditingController controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged; // onChanged แบบ optional

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.iconPath,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.onChanged,
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
        focusColor: Colors.black26,
        fillColor: const Color.fromARGB(255, 247, 247, 247),
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(iconPath),
        ),
        prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
        label: Text(
          hintText,
          style: GoogleFonts.poppins(fontSize: 15),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
