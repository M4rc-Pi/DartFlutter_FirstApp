import 'package:flutter/material.dart';

class DetailRecipe extends StatefulWidget {
  const DetailRecipe({Key? key}) : super(key: key);

  @override
  _DetailRecipeState createState() => _DetailRecipeState();
}

class _DetailRecipeState extends State<DetailRecipe> {

  //final color_background = 0xFFccb378;
  static const color_background = 0xFFabb983;
  //final color_card = 0xFFdcca9d;
  static const color_card = 0xFFe5ddc4;
  static const color_shadow = 0xFF786d50;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //body: Image.network('https://res.cloudinary.com/tienda-com/image/upload/ar_16:9,c_fill/c_scale,w_auto,dpr_auto/recipes/tortilla-espanola.jpg'),

        body: Center(
          //MAIN COLUMN
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //MAIN ARRAY
            children: <Widget>[
              //TORTILLA
              //CONTAINER
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 50.0),
                //STACK

                child: Stack(
                  clipBehavior: Clip.none,
                  //alignment: Alignment.topRight,
                  children: <Widget>[
                    //TORTILLA IMAGE
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Expanded(
                        //alignment: Alignment.center,
                        //margin: EdgeInsets.all(20.0),
                        //padding: EdgeInsets.all(40.0),
                        //height: 200.0,
                        //width: 400.0,
                        //color: Colors.white70,
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(width: 1, color: Colors.black87),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(color_shadow),
                                spreadRadius: 5.0,
                                blurRadius: 20.0,
                                offset: Offset(8, 9),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                                'https://res.cloudinary.com/tienda-com/image/upload/ar_16:9,c_fill/c_scale,w_auto,dpr_auto/recipes/tortilla-espanola.jpg'),
                          ),
                        ),
                      ),
                    ),

                    //SIZED BOX
                    const SizedBox(
                      //alignment: Alignment.center,
                      //margin: EdgeInsets.all(20.0),
                      //padding: EdgeInsets.all(40.0),
                      //height: 200.0,
                      //width: 400.0,
                      //color: Colors.white70,
                      width: 10.0,
                    ),

                    //CARD
                    const Positioned(
                      bottom: -10.0,
                      left: 8.0,
                      child: Card(
                        //color: Color(0xFFe4d5b3),
                        color: Color(color_card),
                        elevation: 10.0,
                        shadowColor: Color(color_shadow),
                        //shape: RoundedRectangleBorder(
                        //  borderRadius: BorderRadius.circular(50.0),
                        //),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Tortilla de patatas',
                              style: TextStyle(
                                color: Colors.black87,
                                letterSpacing: 1.0,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),

//LOWER PART
              //CONTAINER
              Container(
                //padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),

                //COLUMN
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //CAMERA ICON
                    /* 
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: const Icon(
                        Icons.camera_alt,
                        size: 40.0,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
            */

                    //MAIL BUTTON
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.mail),
                        onPressed: () {},
                        label: const Text(
                          'Mail',
                          style: TextStyle(
                            //fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurpleAccent,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 1),
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ),

                    //FAVORITE BUTTON
                    Container(
                      height: 45.0,
                      child: FloatingActionButton.extended(
                        splashColor: Colors.deepPurpleAccent,
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.black,
                        onPressed: () {},
                        label: const Text(
                          'Favorite',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        icon: const Icon(Icons.favorite),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
