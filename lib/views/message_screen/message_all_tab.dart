import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

import '../../gen/assets.gen.dart';
import 'message_all_widget.dart';

class MessageAllTab extends StatefulWidget {
  const MessageAllTab({super.key});

  @override
  State<MessageAllTab> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<MessageAllTab>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white1,
      appBar: AppBar(
        title: Text(
          "Shedule",
          style: GoogleFonts.robotoMono(
            color: ColorResources.black6,
            fontSize: FontSizes.sizeLg,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 96,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  // "lib/icons/bell.png",
                  Assets.icons.bell.path,
                ),
              )),
            ),
          ),
        ],
        backgroundColor: ColorResources.white1,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   PageTransition(
              //       type: PageTransitionType.bottomToTop, child: chat_screen()),
              // );
            },
            child: MessageAllWidget(
              image: Assets.icons.maleDoctor.path,
              maintext: "Dr. Marcus Horizon",
              subtext: "I don,t have any fever, but headchace...",
              time: "10.24",
              messageCount: "2",
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   PageTransition(
              //       type: PageTransitionType.bottomToTop, child: chat_screen()),
              // );
            },
            child: MessageAllWidget(
              image: Assets.icons.docto3.path,
              maintext: "Dr. Alysa Hana",
              subtext: "Hello, How can i help you?",
              time: "10.24",
              messageCount: "1",
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   PageTransition(
              //       type: PageTransitionType.bottomToTop, child: chat_screen()),
              // );
            },
            child: MessageAllWidget(
              image: Assets.icons.doctor2.path,
              maintext: "Dr. Maria Elena",
              subtext: "Do you have fever?",
              time: "10.24",
              messageCount: "3",
            ),
          ),
        ],
      ),
    );
  }
}
