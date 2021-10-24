import 'package:flutter/material.dart';
import 'package:frank_furter/controller/home_controller/test_controller.dart';
import 'package:frank_furter/utils/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectTypeCurrencyWidget extends StatefulWidget {
  final String? currenciesType;
  final void Function(String newValue) setType;

  const SelectTypeCurrencyWidget({Key? key, required this.currenciesType, required this.setType, }) : super(key: key);

  @override
  _SelectTypeCurrencyWidgetState createState() => _SelectTypeCurrencyWidgetState();
}

class _SelectTypeCurrencyWidgetState extends State<SelectTypeCurrencyWidget> {

  @override
  void initState() {
    ConvertController.instance.setListCurrencies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 100;
    
    return SizedBox(
      width: width * 60,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.currenciesType,
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down, color: Color(0XFFF63356),),
          iconSize: width * 8,
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          onChanged: (String? newValue) {
            widget.setType(newValue!);
          },
          items: ConvertController.instance.listCurrencies
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: GoogleFonts.poppins(
                  color: MyColors.primaryTextColor,
                  fontWeight: FontWeight.normal,
                  fontSize: width * 3.5,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}