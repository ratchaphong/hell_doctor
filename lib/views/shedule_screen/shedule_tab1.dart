import 'package:flutter/material.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/utilities/theme.dart';

import 'shedule_card.dart';

class SheduleTab1 extends StatelessWidget {
  const SheduleTab1({super.key});

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
              SheduleCard(
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
              SheduleCard(
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
