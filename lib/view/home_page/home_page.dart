import 'package:flutter/material.dart';
import 'package:frank_furter/controller/convert_controller/convert_controller.dart';
import 'package:frank_furter/utils/constants/colors.dart';
import 'package:frank_furter/view/home_page/widget/display_widget.dart';
import 'package:frank_furter/view/home_page/widget/load_app.dart';

import 'widget/build_buttons_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    ConvertController.instance.setListCurrencies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: MyColors.backgroundBlackLigth,
      body: AnimatedBuilder(
        animation: ConvertController.instance,
        builder: (context, snapshot) {
          return ConvertController.instance.listCurrencies.isEmpty ?
            const LoadApp()
          :
            Column(
            children: const <Widget>[
              Expanded(child: DisplayWidget()),
              Expanded(child: BuildButtons()),
            ],
          );
        }
      ),
    );
  }
}