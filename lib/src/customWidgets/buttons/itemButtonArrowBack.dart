// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:widgets_app/src/assets/design.dart';

class ItemButtonArrowBack extends StatelessWidget {

//ATTRIBUTES
  var _popContext;
  bool _visibility;

//CONSTRUCTOR
  ItemButtonArrowBack(this._visibility, this._popContext, {Key? key}) : super(key: key);

//BUILD
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _visibility,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.15),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(_popContext);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color(Design.COLOR_CARD),
              size: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
