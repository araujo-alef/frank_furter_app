import 'package:flutter/material.dart';
import 'package:frank_furter/controller/convert_controller/convert_controller.dart';
import 'package:frank_furter/utils/constants/colors.dart';

class ButtonWidget extends StatelessWidget {
  final String value;

  const ButtonWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = ConvertController.instance;
    final width = MediaQuery.of(context).size.width / 100;
    final height = MediaQuery.of(context).size.height / 100;

    return SizedBox(
      width: width * 25,
      height: (height * 50) / 4,
      child: value == ''
          ? Container()
          : ElevatedButton(
              onPressed: () {
                value == 'del' ?
                  _controller.deleteCurrencyValue()
                : 
                  value == 'AC'
                ?
                  _controller.cleanCurrencyValue()
                :
                  _controller.setCurrentCurrencyValue(value);
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
                        fontSize: height * 4,
                        color: value == 'AC'
                            ? const Color(0XFFF63356)
                            : const Color(0XFF747474),
                      ),
                    ),
            ),
    );
  }
}
