// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ItemButtonFavourite extends StatelessWidget {

//ATTRIBUTES
  final String _customLabel = 'Favorite';
  final double _customFontSize = 15.0;
  final double _customHeight = 45.0;

//CONSTRUCTOR
  const ItemButtonFavourite({Key? key}) : super(key: key);

//BUILD
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _customHeight,
      child: FloatingActionButton.extended(
        splashColor: Colors.deepPurpleAccent,
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.black,
        onPressed: () {},
        label: Text(_customLabel,
          style: TextStyle(
            fontSize: _customFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.favorite,
          color: Colors.white,
        ),
      ),
    );
  }
}
