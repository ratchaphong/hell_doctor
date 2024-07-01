import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/models/schedule_response.dart';
import 'package:hell_care/utilities/theme.dart';

import 'shedule_card.dart';

class SheduleTab extends StatelessWidget {
  final List<ScheduleData> data;

  const SheduleTab({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: data.isNotEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: data
                      .map((toElement) => SheduleCard(
                            confirmation: toElement.confirmation,
                            mainText: toElement.mainText,
                            subText: toElement.subText,
                            date: toElement.date,
                            time: toElement.time,
                            image: toElement.image,
                          ))
                      .toList())
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nothing to show",
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeLg,
                        fontWeight: FontWeight.bold,
                        color: ColorResources.grey1,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
