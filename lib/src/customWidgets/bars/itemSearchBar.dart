// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:widgets_app/src/assets/design.dart';

class ItemSearchBar extends StatelessWidget {

//ATTRIBUTES
  final Map<String, double> _customPadding = {
    'left': 15.0,
    'top': 5.0,
    'right': 15.0,
    'bottom': 5.0
  };
  final String _customlabel = "Search Bar";
  final double _customRadius = 15.0;
  final String _customhintText = "Type your desired recipe foods name";

  Color _customOnSelectedColor = Design.COLOR_SELECTED_TEXTFIELD_OK;
  Color _customIconColor = Colors.black54;

//CONSTRUCTOR
  ItemSearchBar({Key? key}) : super(key: key);

//BUILD
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          _customPadding["left"]!,
          _customPadding["top"]!,
          _customPadding["right"]!,
          _customPadding["bottom"]!),
      child: SizedBox(
        height: 50.0,
        child: TextField(
          decoration: InputDecoration(
            fillColor: const Color(Design.COLOR_CARD),
            filled: true,
            border: const OutlineInputBorder(),
            labelText: _customlabel,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_customRadius),
              borderSide: const BorderSide(
                color: Colors.black54,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_customRadius),
              borderSide: BorderSide(
                color: _customOnSelectedColor,
              ),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: _customIconColor,
            ),
            hintText: _customhintText,
            hintStyle: TextStyle(
              color: _customOnSelectedColor,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }

//GETTERS AND SETTERS
  String get customlabel => _customlabel;
  String get customhintText => _customhintText;
  Color get customOnSelectedColor => _customOnSelectedColor;
  Color get customIconColor => _customIconColor;

  set customOnSelectedColor(Color color) {
    _customOnSelectedColor = color;
  }
  set customIconColor(Color color) {
    _customIconColor = color;
  }
}
