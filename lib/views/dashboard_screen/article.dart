import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';

class Article extends StatelessWidget {
  final String mainText;
  final String dateText;
  final String duration;
  final String image;

  const Article({
    super.key,
    required this.mainText,
    required this.dateText,
    required this.duration,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.08,
      // width: MediaQuery.of(context).size.width * 0.8500,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromARGB(255, 231, 231, 231),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.1400,
              child: Image.asset(image),
            ),
            SizedBox(
              // height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainText,
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeSm,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dateText,
                        style: GoogleFonts.robotoMono(
                          fontSize: FontSizes.sizeXs,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        duration,
                        style: GoogleFonts.robotoMono(
                          fontSize: FontSizes.sizeXs,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 0, 136, 102),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              // height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset(
                // "lib/icons/Bookmark.png",
                Assets.icons.bookmark.path,
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
