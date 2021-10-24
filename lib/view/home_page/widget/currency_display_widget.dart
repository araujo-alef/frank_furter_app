import 'package:flutter/material.dart';

import 'input_currency_widget.dart';
import 'select_type_currency_widget.dart';

class CurrencyDisplayWidget extends StatelessWidget {
  final String currencyValue;
  final String currencyType;
  final void Function(String newValue) setType;

  const CurrencyDisplayWidget({
    Key? key,
    required this.currencyValue,
    required this.currencyType, 
    required this.setType, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    return SizedBox(
      height: height * 15,
      child: Column(  
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SelectTypeCurrencyWidget(currenciesType: currencyType, setType: setType),
          InputCurrencyWidget(currencyValue: currencyValue,)
        ],
      ),
    );
  }
}
