import 'package:flutter/material.dart';
import 'package:frank_furter/utils/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarDisplay extends StatelessWidget {
  const AppBarDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Container(
      width: width * 60,
      height: height * 12,
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: MyColors.secondTextColor, width: 3),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: height * 2),
        child: Text(
          'Frank Furter',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: height * 2.2,
            color: MyColors.primaryTextLigthColor,
          ),
        ),
      ),
    );
  }
}
