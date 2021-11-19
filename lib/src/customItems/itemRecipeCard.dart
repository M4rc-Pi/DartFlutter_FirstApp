// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:widgets_app/src/assets/design.dart';
import 'package:widgets_app/src/views/viewRecipeDetail.dart';

// ignore: must_be_immutable
class ItemRecipeCard extends Card {
  var context;
  String title = '';
  String stars = '';
  String time = '';
  String img = '';

  final double _customHeight = 150.0;
  final double _customBorderRadius = 12.0;
  final Map<String, double> _customMargin = {
    'left': 20.0,
    'top': 15.0,
    'right': 20.0,
    'bottom': 5.0
  };
  final Map<String, double> _customPadding = {
    'left': 160.0,
    'top': 10.0,
    'right': 10.0,
    'bottom': 20.0
  };
  final double _customBlurRadius = 10.0;
  final double _customRowWidth = 120.0;
  final double _customFontSize = 15.0;
  final Map<String, double> _imgPositionLTRB = {
    'left': 20.0,
    'top': 15.0,
    'right': 0.0,
    'bottom': 5.0
  };
  final double _imgWidth = 150.0;

  ItemRecipeCard(this.title, this.stars, this.time, this.img, this.context);

  Widget create() {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DetailRecipe()));
        },
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  _customMargin["left"]!,
                  _customMargin["top"]!,
                  _customMargin["right"]!,
                  _customMargin["bottom"]!),
              height: _customHeight,
              decoration: BoxDecoration(
                color: const Color(Design.COLOR_CARD),
                borderRadius: BorderRadius.circular(_customBorderRadius),
                boxShadow: [
                  BoxShadow(
                    color: const Color(Design.COLOR_SHADOW),
                    blurRadius: _customBlurRadius,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    _customPadding["left"]!,
                    _customPadding["top"]!,
                    _customPadding["right"]!,
                    _customPadding["bottom"]!),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: _customRowWidth,
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: _customFontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.pinkAccent,
                        )
                      ],
                    ),
                    Text(stars),
                    Row(
                      children: [
                        Text(
                          time,
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        const Icon(
                          Icons.timer,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: _imgPositionLTRB["left"],
              top: _imgPositionLTRB["top"],
              bottom: _imgPositionLTRB["bottom"],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  img,
                  width: _imgWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }

  double get customHeight => _customHeight;
  double get customBorderRadius => _customBorderRadius;
  Map<String, double> get customMargin => _customMargin;
  Map<String, double> get customPadding => _customPadding;
  double get customBlurRadius => _customBlurRadius;
  double get customRowWidth => _customRowWidth;
  double get customFontSize => _customFontSize;
  Map<String, double> get imgPositionLTRB => _imgPositionLTRB;
  double get imgWidth => _imgWidth;
}
