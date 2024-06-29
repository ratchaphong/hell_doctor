import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

class MessageAllWidget extends StatelessWidget {
  final String maintext;
  final String subtext;
  final String image;
  final String time;
  final String messageCount;

  const MessageAllWidget(
      {super.key,
      required this.maintext,
      required this.subtext,
      required this.image,
      required this.messageCount,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width,
          color: ColorResources.white1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.1500,
                decoration: BoxDecoration(
                  // color: Colors.green,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                color: ColorResources.white1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(
                    //   height: 8,
                    // ),
                    Text(
                      maintext,
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeBase,
                        color: ColorResources.black1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      subtext,
                      style: GoogleFonts.robotoMono(
                        fontSize: FontSizes.sizeSm,
                        color: ColorResources.black1,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1200,
                child: Column(
                  children: [
                    Text(time),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 16,
                      width: 16,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 2, 134, 117),
                        shape: BoxShape.circle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Message Count Here
                          Text(
                            messageCount,
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
