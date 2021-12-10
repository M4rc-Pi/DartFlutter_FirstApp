// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ItemButtonMail extends StatelessWidget {
  
//ATTRIBUTTES
  final double _customContainerPadding = 15.0;
  final double _customFontSize = 15.0;
  final double _customHeight = 70.0;
  final Map<String, double> _customButtonPadding = {
    'horizontal': 35.0,
    'vertical': 1.0
  };
  final String _customLabel = 'Mail';

//CONSTRUCTOR
  ItemButtonMail({Key? key}) : super(key: key);

//BUILD
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(_customContainerPadding),
      height: _customHeight,
      child: ElevatedButton.icon(
        icon: const Icon(Icons.mail),
        onPressed: () {},
        label: Text(
          _customLabel,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.deepPurpleAccent,
            padding: EdgeInsets.symmetric(
                horizontal: _customButtonPadding['horizontal']!,
                vertical: _customButtonPadding['vertical']!),
            textStyle: TextStyle(
                fontSize: _customFontSize, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
