import 'package:flutter/material.dart';
import 'package:frank_furter/controller/convert_controller/convert_controller.dart';
import 'package:frank_furter/utils/constants/colors.dart';


import 'currency_display_widget.dart';
import 'display_app_bar_widget.dart';
import 'information_display_widget.dart';

class DisplayWidget extends StatefulWidget {
  const DisplayWidget({Key? key}) : super(key: key);

  @override
  State<DisplayWidget> createState() => _DisplayWidgetState();

}

class _DisplayWidgetState extends State<DisplayWidget> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;

    return Container(
      height: height * 50,
      color: MyColors.backgroundBlack,
      child: AnimatedBuilder(
        animation: ConvertController.instance,
        builder: (context, snapshot) {
          return Column(
            children: <Widget>[
              const AppBarDisplay(),
              CurrencyDisplayWidget(currencyValue: ConvertController.instance.currentCurrency, currencyType: ConvertController.instance.currentTypeCurrency, setType: ConvertController.instance.setCurrentType,),
              CurrencyDisplayWidget(currencyValue: ConvertController.instance.convertedCurrency, currencyType: ConvertController.instance.convertedTypeCurrency, setType: ConvertController.instance.setConvertedType,),
              const InformatioDisplay(informationText: '*Taxas de câmbio de acordo com api.frankfurter.app',)
            ],
          );
        }
      ),
    );
  }
}