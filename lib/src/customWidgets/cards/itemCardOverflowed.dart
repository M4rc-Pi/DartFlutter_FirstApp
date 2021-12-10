// ignore_for_file: file_names, prefer_final_fields, must_be_immutable
import 'package:flutter/material.dart';

import 'package:widgets_app/src/assets/design.dart';

class ItemCardOverflowed extends StatelessWidget{

//ATTRIBUTES
  final double _customElevation = 7.0;
  final double _customPadding = 10.0;
  final double _customLetterSpacing = 1.0;

  String _customText = '';
  double _customFontSize = 0.0;
  Map<String, double> _customPosition = {'left': 0.0, 'top': 0.0, 'right': 0.0, 'bottom': 0.0};

//CONSTRUCTOR
  ItemCardOverflowed(this._customText, this._customFontSize, this._customPosition, {Key? key}) : super(key: key);

//BUILD
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: _customPosition['bottom'],
      left: _customPosition['left'],
      child: Card(
        color: const Color(Design.COLOR_CARD),
        elevation: _customElevation,
        shadowColor: const Color(Design.COLOR_SHADOW),
        child: Padding(
          padding: EdgeInsets.all(_customPadding),
          child: Text(_customText,
              style: TextStyle(
                fontSize: _customFontSize,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                letterSpacing: _customLetterSpacing,
              )),
        ),
      ),
    );
  }

//GETTERS
  String get customText => _customText;
  double get customFontSize => _customFontSize;
  Map<String, double> get customPosition => _customPosition;

}
