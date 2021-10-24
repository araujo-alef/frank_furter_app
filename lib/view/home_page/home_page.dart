import 'package:flutter/material.dart';
import 'package:frank_furter/utils/constants/colors.dart';
import 'package:frank_furter/view/home_page/widget/display_widget.dart';

import 'widget/build_buttons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.backgroundBlackLigth,
      body: Column(
        children: const <Widget>[
          Expanded(child: DisplayWidget()),
          Expanded(child: BuildButtons()),
        ],
      ),
    );
  }
}