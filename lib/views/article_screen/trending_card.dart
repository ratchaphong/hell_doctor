import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utilities/theme.dart';

class TrendingCard extends StatelessWidget {
  final String category;
  final String title;
  final String date;
  final String readTime;
  final String imagePath;

  const TrendingCard({
    super.key,
    required this.category,
    required this.title,
    required this.date,
    required this.readTime,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Colors.black12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1000,
              width: MediaQuery.of(context).size.width * 0.3500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.020,
              width: MediaQuery.of(context).size.width * 0.1200,
              color: const Color.fromARGB(255, 233, 231, 231),
              alignment: Alignment.center,
              child: Text(
                category,
                style: GoogleFonts.robotoMono(
                  fontSize: FontSizes.sizeXs,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 6, 110, 102),
                ),
              ),
            ),
            Text(
              title,
              style: GoogleFonts.robotoMono(
                fontSize: FontSizes.sizeXs,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: GoogleFonts.robotoMono(
                    fontSize: FontSizes.sizeXs,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    readTime,
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeXs,
                      color: const Color.fromARGB(255, 0, 136, 102),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
