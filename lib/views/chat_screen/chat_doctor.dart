import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';

class ChatDoctor extends StatelessWidget {
  const ChatDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.06,
      // width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.1500,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    // "lib/icons/male-doctor.png",
                    Assets.icons.maleDoctor.path,
                  ),
                  filterQuality: FilterQuality.high),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dr. Marcus Horizon",
                style: GoogleFonts.robotoMono(
                    fontSize: FontSizes.sizeLg,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 41, 41, 41)),
              ),
              Text(
                "10 min ago",
                style: GoogleFonts.robotoMono(
                    fontSize: FontSizes.sizeXs,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 92, 92, 92)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
