import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/views/chat_screen/chat_info.dart';

import '../../gen/assets.gen.dart';
import '../../utilities/theme.dart';
import '../../widgets/custom_text_field.dart';
import '../dashboard_screen/dashboard_screen.dart';
import 'chat_doctor.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: ColorResources.white1,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.off(
              () => const DashboardScreen(),
              transition: Transition.fade,
            );
          },
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                // "lib/icons/back1.png",
                Assets.icons.back1.path,
              ),
            )),
          ),
        ),
        title: Text(
          "Dr. Marcus Horizon",
          style: GoogleFonts.robotoMono(
            color: ColorResources.black1,
            fontWeight: FontWeight.w500,
            fontSize: FontSizes.sizeLg,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      // "lib/icons/video_call.png",
                      Assets.icons.videoCall.path,
                    ),
                  )),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      // "lib/icons/call.png",
                      Assets.icons.call.path,
                    ),
                  )),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      // "lib/icons/more.png",
                      Assets.icons.more.path,
                    ),
                  )),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: ColorResources.white1,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ChatInfo(),
                const SizedBox(
                  height: 32,
                ),
                const ChatDoctor(),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.4500,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 232, 232),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello. how can i help you?",
                        style: TextStyle(fontSize: FontSizes.sizeSm),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 131, 113),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "I have suffering from headache and cold for 3 days, I took 2 tablets of dolo,\nbut still pain",
                                  style: TextStyle(
                                      fontSize: FontSizes.sizeSm,
                                      color: ColorResources.white1),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width * 0.05,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      // "lib/icons/ticks.png",
                                      Assets.icons.ticks.path,
                                    ),
                                    filterQuality: FilterQuality.high),
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.4500,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 232, 232),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello. how can i help you?",
                          style: TextStyle(
                            fontSize: FontSizes.sizeSm,
                          ),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 131, 113),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "I have suffering from headache and cold for 3 days, I took 2 tablets of dolo,\nbut still pain",
                                  style: TextStyle(
                                    color: ColorResources.white1,
                                    fontSize: FontSizes.sizeSm,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width * 0.05,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      // "lib/icons/ticks.png",
                                      Assets.icons.ticks.path,
                                    ),
                                    filterQuality: FilterQuality.high),
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomTextField(
                controller: searchController,
                hintText: "Type message ...",
                iconPath: Assets.icons.pin.path,
              ),
            ),
          )
        ],
      ),
    );
  }
}
