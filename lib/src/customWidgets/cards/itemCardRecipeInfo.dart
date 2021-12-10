// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:widgets_app/src/assets/design.dart';

class ItemCardRecipeInfo extends StatelessWidget {

//ATTRIBUTES
  final Map<String, dynamic> data;

//CONSTRUCTOR
  // ignore: use_key_in_widget_constructors
  const ItemCardRecipeInfo({required this.data});

//BUILD
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 55.0, 15.0, 25.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(Design.COLOR_CARD),
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: const [
          BoxShadow(
            color: Color(Design.COLOR_SHADOW),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 10.0),
            child: Text(
              data['stars']!,
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.orangeAccent,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 10.0),
            child: Text(
              '''  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non tortor ut turpis sollicitudin consequat. Aliquam eu iaculis elit. Duis pulvinar viverra magna, molestie efficitur erat suscipit eu. Aliquam consectetur sem augue, nec elementum elit commodo nec. Duis aliquet libero nulla, sed tempus nibh pretium ut. Duis mauris diam, scelerisque eu consectetur et, elementum viverra ipsum. Phasellus in viverra sem, maximus faucibus leo. Ut fermentum dolor sit amet est euismod, tincidunt venenatis ante accumsan. Proin purus nisi, pharetra eget posuere quis, ultricies vitae erat.

  Nam sit amet rutrum lectus, fermentum malesuada massa. Integer congue tempor cursus. Mauris consequat, ipsum a tristique dictum, neque urna auctor dolor, sit amet posuere magna neque eu dolor. Ut mattis dolor eu rhoncus pulvinar. Nullam elementum metus ut metus consequat semper. Ut molestie urna nec aliquet congue. In quis aliquam justo. Duis eget quam nec neque aliquet vestibulum id quis ante. Duis quis mauris vestibulum, sollicitudin sapien pulvinar, efficitur ipsum. 
                        ''',
              style: TextStyle(
                fontSize: 15.0,
                wordSpacing: 2.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
