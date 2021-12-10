// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:widgets_app/src/assets/design.dart';

class ItemBannerTitle {

  String title = '';

  final double _customBlurRadius = 42.0;
  final double _customTextFontSize = 34.0;
  final double _customDecorationThickness = 1.5;
  final double _customLetterSpacing = 1.0;
  final double _customWordSpacing = 5.0;
  final double _customShadowBlurRadius = 33.0;
  final Map<String,double> _customShadowOffset = {'x': 5.0, 'y': 5.0};

  ItemBannerTitle(this.title);

  Widget create() {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(Design.COLOR_SHADOW),
              blurRadius: _customBlurRadius,
            ),
          ],
        ),
        child: Text(
          title,
          style: GoogleFonts.dancingScript(
            //reenieBeanie
            //pinyonScript
            //italianno
            //alexbrush
            //tangerine
            //parisienne
            //dancing

            textStyle: TextStyle(
              fontSize: _customTextFontSize,
              fontWeight: FontWeight.w800,
              color: const Color(Design.COLOR_CARD),
              decorationColor: Colors.deepOrangeAccent,
              decorationThickness: _customDecorationThickness,
              decorationStyle: TextDecorationStyle.wavy,
              letterSpacing: _customLetterSpacing,
              wordSpacing: _customWordSpacing,
              shadows: [
                Shadow(
                  color: Colors.white60,
                  blurRadius: _customShadowBlurRadius,
                  offset: Offset(_customShadowOffset['x']!, _customShadowOffset['y']!),
                ),
              ],
            ),
          ),
        ),
      );
  }
}