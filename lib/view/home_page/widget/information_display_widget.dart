import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:frank_furter/utils/constants/colors.dart';

class InformatioDisplay extends StatelessWidget {
  final String informationText;

  const InformatioDisplay({
    Key? key,
    required this.informationText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;
    
    return Container(
      height: height * 8,
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(left: width * 5, bottom: height * 0.5),
        child: Text(
          informationText,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            color: MyColors.informationTextColor,
            fontSize: MediaQuery.of(context).textScaleFactor * 18,
          )
        ),
      ),
    );
  }
}
