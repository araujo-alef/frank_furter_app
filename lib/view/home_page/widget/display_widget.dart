import 'package:flutter/material.dart';
import 'package:frank_furter/controller/convert_controller/convert_controller.dart';
import 'package:frank_furter/utils/constants/colors.dart';


import 'currency_display_widget.dart';
import 'display_app_bar_widget.dart';
import 'information_display_widget.dart';

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    var _controller = ConvertController.instance;

    return Container(
      height: height * 50,
      color: MyColors.backgroundBlack,
      child: AnimatedBuilder(
        animation: ConvertController.instance,
        builder: (context, snapshot) {
          return Column(
            children: <Widget>[
              const AppBarDisplay(),
              CurrencyDisplayWidget(currencyValue: _controller.currentCurrency, currencyType: _controller.currentTypeCurrency, setType: _controller.setCurrentType,),
              CurrencyDisplayWidget(currencyValue: _controller.convertedCurrency, currencyType: _controller.convertedTypeCurrency, setType: _controller.setConvertedType,),
              const InformatioDisplay(informationText: '*Taxas de câmbio de acordo com api.frankfurter.app',)
            ],
          );
        }
      ),
    );
  }
}