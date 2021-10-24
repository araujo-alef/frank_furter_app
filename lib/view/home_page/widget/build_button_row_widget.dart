import 'package:flutter/material.dart';

import 'button_widget.dart';

class BuildButtonRow extends StatelessWidget {
  final String first;
  final String second;
  final String third;
  final String fourth;

  const BuildButtonRow({
    Key? key,
    required this.first,
    required this.second,
    required this.third,
    required this.fourth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final row = [first, second, third, fourth];

    return Expanded(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: row.map((value) => ButtonWidget(value: value)).toList()),
    );
  }
}