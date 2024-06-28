import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hell_care/utilities/theme.dart';

class DateSelect extends StatefulWidget {
  final String maintext;
  final String date;

  const DateSelect({super.key, required this.date, required this.maintext});

  @override
  State<DateSelect> createState() => _DateSelectState();
}

class _DateSelectState extends State<DateSelect> {
  bool isSelected = false;

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleSelection,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: MediaQuery.of(context).size.height * 0.02,
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: isSelected
                ? const Color.fromARGB(255, 2, 179, 149)
                : Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.black12),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.maintext,
                  style: GoogleFonts.robotoMono(
                    fontSize: FontSizes.sizeSm,
                    color: isSelected ? ColorResources.white1 : Colors.black54,
                  ),
                ),
                Text(
                  widget.date,
                  style: GoogleFonts.robotoMono(
                    fontSize: FontSizes.sizeBase,
                    color: isSelected
                        ? ColorResources.white1
                        : const Color.fromARGB(255, 27, 27, 27),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
