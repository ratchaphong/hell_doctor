import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

class ListIcons extends StatelessWidget {
  final String icon;
  final String text;

  const ListIcons({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                    color: ColorResources.white1,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 1,
                        color: ColorResources.grey3,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage(icon),
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                text,
                style: GoogleFonts.robotoMono(
                  fontSize: FontSizes.sizeSm,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
