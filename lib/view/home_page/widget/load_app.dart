import 'package:flutter/material.dart';
import 'package:frank_furter/controller/convert_controller/convert_controller.dart';
import 'package:frank_furter/utils/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadApp extends StatelessWidget {
  const LoadApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: height * 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: const AssetImage('assets/images/icon_app.png'),
                height: height * 20,
              ),
              const CircularProgressIndicator(
                color: MyColors.secondTextColor,
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 5),
                child: Text(
                  'Certifique-se de que está conectado a internetpara',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: height * 1.6, color: MyColors.primaryTextColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  ConvertController.instance.setListCurrencies();
                },
                child: Text(
                  'tentar novamente',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: height * 1.8,
                      color: MyColors.secondTextColor),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
