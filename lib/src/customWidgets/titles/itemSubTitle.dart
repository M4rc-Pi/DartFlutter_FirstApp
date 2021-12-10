// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:widgets_app/src/assets/design.dart';

class ItemSubTitle extends StatelessWidget {

//ATTRIBUTES
  String _title = '';
  final double _customBorderRadius = 12.0;
  final double _customFontSize = 15.0;
  final double _customInnerPadding = 6.0;
  final Map<String, double> _customOutterPadding = {
    'left': 8.0,
    'top': 12.0,
    'right': 275.0,
    'bottom': 3.0
  };

//CONSTRUCTOR
  ItemSubTitle(this._title, {Key? key}) : super(key: key);

//BUILD
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          _customOutterPadding['left']!,
          _customOutterPadding['top']!,
          _customOutterPadding['right']!,
          _customOutterPadding['bottom']!),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(Design.COLOR_CARD).withOpacity(0.80),
          borderRadius: BorderRadius.circular(_customBorderRadius),
        ),
        child: Padding(
          padding: EdgeInsets.all(_customInnerPadding),
          child: Text(
            _title,
            style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: _customFontSize,
            ),
          ),
        ),
      ),
    );
  }
}
