import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';

class ScheduleCard extends StatelessWidget {
  final String mainText;
  final String subText;
  final String image;
  final String date;
  final String time;
  final String confirmation;

  const ScheduleCard(
      {super.key,
      required this.mainText,
      required this.subText,
      required this.date,
      required this.confirmation,
      required this.time,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.22,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          color: ColorResources.white1,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.black12,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mainText,
                          style: GoogleFonts.robotoMono(
                            fontSize: FontSizes.sizeLg,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          subText,
                          style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeXs,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 99, 99, 99)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(image),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.8500,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            // "lib/icons/callender2.png",
                            Assets.icons.callender2.path,
                          ),
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    Text(
                      date,
                      style: GoogleFonts.robotoMono(
                          fontSize: FontSizes.sizeXs,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 99, 99, 99)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            // "lib/icons/watch.png",
                            Assets.icons.watch.path,
                          ),
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    Text(
                      time,
                      style: GoogleFonts.robotoMono(
                          fontSize: FontSizes.sizeXs,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 99, 99, 99)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.07,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            // "lib/icons/elips.png",
                            Assets.icons.elips.path,
                          ),
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    Text(
                      confirmation,
                      style: GoogleFonts.robotoMono(
                          fontSize: FontSizes.sizeXs,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 99, 99, 99)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04500,
                    width: MediaQuery.of(context).size.width * 0.3800,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 232, 233, 233),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cancel",
                          style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeBase,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 61, 61, 61)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04500,
                    width: MediaQuery.of(context).size.width * 0.3800,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 4, 190, 144),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Reschedule",
                          style: GoogleFonts.robotoMono(
                              fontSize: FontSizes.sizeBase,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 252, 252, 252)),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
