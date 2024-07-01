import 'package:flutter/material.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';

import 'schedule_card.dart';

class ScheduleTab1 extends StatelessWidget {
  const ScheduleTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ScheduleCard(
                confirmation: "Confirmed",
                mainText: "Dr. Marcus Horizon",
                subText: "Chardiologist",
                date: "26/06/2022",
                time: "10:30 AM",
                image: Assets.icons.maleDoctor.path,
              ),
              const SizedBox(
                height: 24,
              ),
              ScheduleCard(
                confirmation: "Confirmed",
                mainText: "Dr. Marcus Horizon",
                subText: "Chardiologist",
                date: "26/06/2022",
                time: "2:00 PM",
                image: Assets.icons.femaleDoctor2.path,
              )
            ],
          ),
        ),
      ),
    );
  }
}
