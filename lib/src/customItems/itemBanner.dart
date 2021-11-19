// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgets_app/src/assets/design.dart';

class ItemBanner {
  ItemBanner();

  Widget create() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black87,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Image.network(
              'https://st4.depositphotos.com/4590583/28898/i/450/depositphotos_288989496-stock-photo-banner-food-top-view-free.jpg'),
        ),
        Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(Design.COLOR_SHADOW),
                blurRadius: 42.0,
              ),
            ],
          ),
          child: Text(
            'Traditional Food!',
            style: GoogleFonts.dancingScript(
              //reenieBeanie
              //pinyonScript
              //italianno
              //alexbrush
              //tangerine
              //parisienne
              //dancing

              textStyle: const TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.w800,
                color: Color(Design.COLOR_CARD),
                decorationColor: Colors.deepOrangeAccent,
                decorationThickness: 1.5,
                decorationStyle: TextDecorationStyle.wavy,
                letterSpacing: 1.0,
                wordSpacing: 5.0,
                shadows: [
                  Shadow(
                    color: Colors.white60,
                    blurRadius: 33.0,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
