import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

class ChatInfo extends StatelessWidget {
  const ChatInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: ColorResources.white1,
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Consultion Start",
              style: GoogleFonts.robotoMono(
                  fontSize: FontSizes.sizeBase,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 0, 131, 113)),
            ),
            Text(
              "You can consult your problem to the doctor",
              style: GoogleFonts.robotoMono(
                  fontSize: FontSizes.sizeXs,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 136, 136, 136)),
            )
          ],
        ),
      ),
    );
  }
}
