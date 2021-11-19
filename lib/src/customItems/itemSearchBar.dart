// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:widgets_app/src/assets/design.dart';

class ItemSearchBar {

  final Map<String, double> _customPadding = {
    'left': 15.0,
    'top': 30.0,
    'right': 15.0,
    'bottom': 0.0
  };
  final String _customlabel = "Search Bar";
  final String _customhintText = "Type your desired recipe foods name";
  final double _customRadius = 15.0;

  ItemSearchBar();

  Widget create() {
    return Padding(
      padding: EdgeInsets.fromLTRB(_customPadding["left"]!, _customPadding["top"]!, _customPadding["right"]!, _customPadding["bottom"]!),
      child: TextField(
        decoration: InputDecoration(
          fillColor: const Color(Design.COLOR_CARD),
          filled: true,
          border: const OutlineInputBorder(),
          labelText: _customlabel,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(_customRadius),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(_customRadius),
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: _customhintText,
          hintStyle: const TextStyle(
            color: Colors.blue,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  Map<String, double> get customPadding => _customPadding;
  String get customlabel => _customlabel;
  String get customhintText => _customhintText;
  double get customRadius => _customRadius;
}
