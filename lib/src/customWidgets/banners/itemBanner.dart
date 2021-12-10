// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:widgets_app/src/customWidgets/titles/itemBannerTitle.dart';
import 'package:widgets_app/src/customWidgets/buttons/itemButtonArrowBack.dart';
import 'package:widgets_app/src/customWidgets/cards/itemCardOverflowed.dart';

class ItemBanner extends StatelessWidget {
//ATTRIBUTES
  var context;
  String _title = '';
  String _img = '';
  bool _homeBanner = true;
  bool _visibility = false;

  final double _customBlurRadius = 20.0;
  final double _customCardFontSize = 18.0;
  final Map<String, double> _customCardPosition = {
    'left': 6.0,
    'top': 0.0,
    'right': 0.0,
    'bottom': -30.0
  };

  late Widget _bannerTitle;
  late Widget _arrow;

//CONSTRUCTOR
  ItemBanner(this._title, this._img, this.context, this._homeBanner) {
    _checkBanner();
    _arrow = ItemButtonArrowBack(_visibility, context);
  }

//BUILD
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              //height: 200.0,
              child: Image.network(_img, fit: BoxFit.fill),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: _customBlurRadius,
                  ),
                ],
              ),
            ),
          ],
        ),
        _bannerTitle,
        Positioned(
          top: 3.0,
          left: 3.0,
          child: _arrow,
        ),
      ],
    );
  }

//FUNCTIONS
  void _checkBanner() {
    if (_homeBanner) {
      _bannerTitle = ItemBannerTitle(_title);
    } else {
      _bannerTitle =
          ItemCardOverflowed(_title, _customCardFontSize, _customCardPosition);
      _visibility = true;
    }
  }

//GETTERS
  String get title => _title;
  String get img => _img;
  bool get homeBanner => _homeBanner;
}
