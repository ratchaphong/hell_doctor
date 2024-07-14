import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/gen/assets.gen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utilities/theme.dart';
import '../login_signin_screen.dart';
import 'on_board_1_screen.dart';
import 'on_board_2_screen.dart';
import 'on_board_3_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController();

  bool onLastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastpage = (index == 2);
                });
              },
              children: const <Widget>[
                OnBoard1Screen(),
                OnBoard2Screen(),
                OnBoard3Screen(),
              ]),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.robotoMono(
                          fontSize: FontSizes.sizeBase,
                          color: ColorResources.grey1,
                        ),
                      )),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const SlideEffect(
                      spacing: 4.0,
                      radius: 4.0,
                      dotWidth: 14.0,
                      dotHeight: 7.0,
                      strokeWidth: 1.5,
                      dotColor: ColorResources.lightGreen2,
                      activeDotColor: ColorResources.lightGreen1,
                    ),
                  ),
                  onLastpage
                      ? GestureDetector(
                          onTap: () {
                            // Get.offAllNamed('/login');
                            Get.offAll(() => const LoginSignInScreen());
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              color: ColorResources.lightGreen1,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Done ",
                                    style: GoogleFonts.robotoMono(
                                      fontSize: FontSizes.sizeBase,
                                      fontWeight: FontWeight.bold,
                                      color: ColorResources.white1,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.width *
                                        0.04,
                                    child: Assets.icons.check.image(),
                                  ),
                                ],
                              ),
                            ),
                          ))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              color: ColorResources.lightGreen1,
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Next ",
                                    style: GoogleFonts.robotoMono(
                                      fontSize: FontSizes.sizeBase,
                                      fontWeight: FontWeight.bold,
                                      color: ColorResources.white1,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.06,
                                    child: Assets.icons.arrow.image(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
