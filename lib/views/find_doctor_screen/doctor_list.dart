import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

import '../../gen/assets.gen.dart';

class DoctorList extends StatelessWidget {
  final String image;
  final String maintext;
  final String subtext;
  final String numRating;
  final String distance;

  const DoctorList(
      {super.key,
      required this.distance,
      required this.image,
      required this.maintext,
      required this.numRating,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.16,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: ColorResources.white1,
          border: Border.all(
            color: ColorResources.white4,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 8.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1200,
                width: MediaQuery.of(context).size.width * 0.2400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(image),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maintext,
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeSm,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subtext,
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeXs,
                      fontWeight: FontWeight.w400,
                      color: ColorResources.black4,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height * 0.01500,
                    width: MediaQuery.of(context).size.width * 0.12,
                    color: ColorResources.white6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.01500,
                          width: MediaQuery.of(context).size.width * 0.03,
                          decoration: BoxDecoration(
                            // image: DecorationImage(
                            //   image: AssetImage(
                            //     "lib/icons/star.png",
                            //   ),
                            //   filterQuality: FilterQuality.high,
                            // ),
                            image: DecorationImage(
                              image: AssetImage(Assets.icons.star.path),
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          numRating,
                          style: GoogleFonts.robotoMono(
                            fontSize: FontSizes.sizeXs,
                            color: ColorResources.lightGreen4,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01500,
                        width: MediaQuery.of(context).size.width * 0.03,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Assets.icons.location.path),
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        distance,
                        style: GoogleFonts.robotoMono(
                          fontSize: FontSizes.sizeXs,
                          color: ColorResources.grey2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
