// ignore_for_file: non_constant_identifier_names, file_names, prefer_final_fields, must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:widgets_app/src/assets/design.dart';
import 'package:widgets_app/src/customWidgets/buttons/itemIconButtonFavorite.dart';
import 'package:widgets_app/src/views/viewRecipeDetail.dart';

class ItemCardRecipe extends StatelessWidget {

//ATTRIBUTES
  //var context;
  Map<String, dynamic> _data = {};
  String _recipeTitle = '';
  String _recipeStars = '';
  String _recipeTime = '';
  String _recipeImg = '';
  String _recipeBanner = '';

  final double _customHeight = 150.0;
  final double _customBorderRadius = 12.0;
  final double _customBlurRadius = 10.0;
  final double _customRowWidth = 12.0;
  final double _customFontSize = 15.0;
  final double _customImgWidth = 150.0;
  final double _customSizedBoxIconTimerWidth = 3.0;
  final double _customShadowSpreadRadius = -5.0;
  final Map<String, double> _customMargin = {
    'left': 20.0,
    'top': 8.0,
    'right': 20.0,
    'bottom': 5.0
  };
  final Map<String, double> _customPadding = {
    'left': 160.0,
    'top': 10.0,
    'right': 10.0,
    'bottom': 20.0
  };
  final Map<String, double> _imgPositionLTRB = {
    'left': 20.0,
    'top': 8.0,
    'right': 0.0,
    'bottom': 5.0
  };
  final Map<String, double> _customShadowOffset = {'x': 0.0, 'y': 10.0};

//CONSTRUCTOR
  //ItemCardRecipe(this._recipeTitle,this._recipeStars, this._recipeTime, this._recipeImg, this._recipeBanner, {Key? key}) : super(key: key);
  ItemCardRecipe(this._data, {Key? key}) : super(key: key);

//BUILD
  @override
  Widget build(BuildContext context) {

    //Navvigator.pushNamed(context, data['routeName']);
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ViewRecipeDetail(data: _data)));
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
                    spreadRadius: _customShadowSpreadRadius,
                    offset: Offset(
                      _customShadowOffset['x']!,
                      _customShadowOffset['y']!,
                    ),
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
                          //width: _customRowWidth,
//TITLE
                          child: Text(
                            _data['title']!,
                            style: TextStyle(
                              fontSize: _customFontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
//FAVOURITE
                        const ItemIconButtonFavorite()
                      ],
                    ),
//STARS
                    Text(
                      _data['stars']!,
                      style: const TextStyle(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
//TIME
                    Row(
                      children: [
                        Text(
                          _data['time']!,
                          style: const TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(width: _customSizedBoxIconTimerWidth),
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
//IMG
            Positioned(
              left: _imgPositionLTRB["left"],
              top: _imgPositionLTRB["top"],
              bottom: _imgPositionLTRB["bottom"],
              child: ClipRRect(
                borderRadius: BorderRadius.circular(_customBorderRadius),
                child: Image.network(
                  _data['img']!,
                  width: _customImgWidth,
                  height: 20.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}
