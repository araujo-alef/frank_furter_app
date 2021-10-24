import 'package:flutter/material.dart';

import 'build_button_row_widget.dart';

class BuildButtons extends StatelessWidget {
  const BuildButtons({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: const [
          BuildButtonRow(first: '7', second: '8', third: '9', fourth: ''),
          BuildButtonRow(first: '4', second: '5', third: '6', fourth: ''),
          BuildButtonRow(first: '1', second: '2', third: '3', fourth: 'AC'),
          BuildButtonRow(first: '00', second: '0', third: '.', fourth: 'del'),
        ],
      ),
    );
  }
}