import 'package:flutter/material.dart';
import 'package:frank_furter/controller/convert_controller/convert_controller.dart';
import 'package:frank_furter/utils/constants/colors.dart';

class ButtonWidget extends StatelessWidget {
  final String value;

  const ButtonWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      height: (MediaQuery.of(context).size.height * 0.5) / 4,
      child: value == ''
          ? Container()
          : ElevatedButton(
              onPressed: () {
                value == 'del' ?
                  ConvertController.instance.deleteCurrencyValue()
                : 
                  value == 'AC'
                ?
                  ConvertController.instance.cleanCurrencyValue()
                :
                  ConvertController.instance.setCurrentCurrencyValue(value);
              },
              style: TextButton.styleFrom(
                backgroundColor: MyColors.backgroundBlackLigth,
                elevation: 0,
              ),
              child: value == 'del'
                  ? const Icon(
                      Icons.backspace_outlined,
                      color: Color(0XFFF63356),
                      size: 32,
                    )
                  : Text(
                      value,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 38,
                        color: value == 'AC'
                            ? const Color(0XFFF63356)
                            : const Color(0XFF747474),
                      ),
                    ),
            ),
    );
  }
}
