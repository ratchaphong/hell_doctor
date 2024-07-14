import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

import '../../gen/assets.gen.dart';

class ProfileList extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final VoidCallback? onTap;

  const ProfileList(
      {super.key,
      required this.image,
      required this.title,
      required this.color,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.1500,
                    decoration: const BoxDecoration(
                      color: ColorResources.white2,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(image),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.5800,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            title,
                            style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeBase,
                              fontWeight: FontWeight.w600,
                              color: color,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.1100,
                    decoration: const BoxDecoration(),
                    // child: Image.asset("lib/icons/forward.png"),
                    child: Image.asset(
                      Assets.icons.forward.path,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
