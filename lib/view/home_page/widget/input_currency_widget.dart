import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:frank_furter/utils/constants/colors.dart';

class InputCurrencyWidget extends StatefulWidget {
  final String currencyValue;

  const InputCurrencyWidget({
    Key? key,
    required this.currencyValue,
  }) : super(key: key);



  @override
  _InputCurrencyWidgetState createState() => _InputCurrencyWidgetState();
}

class _InputCurrencyWidgetState extends State<InputCurrencyWidget> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;
    
    return Card(
      elevation: 3,
      child: Container(
        color: MyColors.backgroundBlackDark,
        alignment: Alignment.centerRight,
        height: height * 8,
        width: width * 85,
        child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Text(
                widget.currencyValue,
                style: GoogleFonts.poppins(
                  color: MyColors.primaryTextColor,
                  fontSize: height * 5,
                ),
              ),
            ),
      ),
    );
  }
}