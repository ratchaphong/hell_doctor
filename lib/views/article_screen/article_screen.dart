// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:hell_care/views/article_screen/trending_card.dart';
import 'package:hell_care/views/main_screen/main_screen.dart';

import '../../utilities/theme.dart';
import '../../widgets/custom_text_field.dart';
import '../dashboard_screen/article.dart';
import 'popular_widget.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.white1,
        title: Text(
          "Articles",
          style: GoogleFonts.robotoMono(
            fontSize: FontSizes.sizeLg,
            color: const Color.fromARGB(255, 100, 98, 98),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        elevation: 0,
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            child: Image.asset(
              // "lib/icons/back2.png",
              Assets.icons.back2.path,
            ),
          ),
          onPressed: () {
            // Navigator.pushReplacement(
            //   context,
            //   PageTransition(
            //     type: PageTransitionType.fade,
            //     child: Homepage(),
            //   ),
            // );
            Get.off(
              () => const MainScreen(),
              transition: Transition.fade,
            );
          },
        ),
        actions: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.12,
            child: Image.asset(
              // "lib/icons/more.png",
              Assets.icons.more.path,
            ),
          ),
        ],
      ),
      backgroundColor: ColorResources.white1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // Center(
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.06,
              //     width: MediaQuery.of(context).size.width * 0.9,
              //     decoration: const BoxDecoration(),
              //     child: TextField(
              //       textAlign: TextAlign.start,
              //       textInputAction: TextInputAction.none,
              //       obscureText: false,
              //       keyboardType: TextInputType.emailAddress,
              //       textAlignVertical: TextAlignVertical.center,
              //       decoration: InputDecoration(
              //         focusColor: Colors.black26,
              //         fillColor: const Color.fromARGB(255, 247, 247, 247),
              //         filled: true,
              //         prefixIcon: Padding(
              //           padding: const EdgeInsets.symmetric(
              //             horizontal: 10,
              //           ),
              //           child: SizedBox(
              //             height: MediaQuery.of(context).size.height * 0.01,
              //             width: MediaQuery.of(context).size.width * 0.01,
              //             child: Image.asset(
              //               // "lib/icons/search.png",
              //               Assets.icons.search.path,
              //               filterQuality: FilterQuality.high,
              //             ),
              //           ),
              //         ),
              //         prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
              //         label: const Text("Search doctor, drugs, articles..."),
              //         floatingLabelBehavior: FloatingLabelBehavior.never,
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide.none,
              //           borderRadius: BorderRadius.circular(30),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CustomTextField(
                  controller: searchController,
                  hintText: 'Search doctor, drugs, articles...',
                  iconPath: Assets.icons.search.path,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    "Popular Articles",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeLg,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                // width: MediaQuery.of(context).size.width * 3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PopularWidget(
                      text: "Covid-19",
                      onTap: () {
                        print("Covid-19 button tapped");
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    PopularWidget(
                      text: "Diet",
                      onTap: () {
                        print("Diet button tapped");
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    PopularWidget(
                      text: "Fitness",
                      onTap: () {
                        print("Fitness button tapped");
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    PopularWidget(
                      text: "Medicines",
                      onTap: () {
                        print("Medicines button tapped");
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    "Trending Article",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeLg,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          TrendingCard(
                            category: "Covid",
                            title:
                                "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                            date: "Jun 10, 2021",
                            readTime: "5min Read",
                            imagePath: Assets.images.article1.path,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          TrendingCard(
                            category: "Covid",
                            title:
                                "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                            date: "Jun 10, 2021",
                            readTime: "10min Read",
                            imagePath: Assets.images.capsules.path,
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          TrendingCard(
                            category: "Covid",
                            title:
                                "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                            date: "Jun 10, 2021",
                            readTime: "10min Read",
                            imagePath: Assets.images.capsules2.path,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Text(
                    "Related Article",
                    style: GoogleFonts.robotoMono(
                      fontSize: FontSizes.sizeLg,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Article(
                // image: "images/article1.png",
                image: Assets.images.article1.path,
                dateText: "2 min Read",
                duration: "2 min read",
                mainText: "Main text",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
