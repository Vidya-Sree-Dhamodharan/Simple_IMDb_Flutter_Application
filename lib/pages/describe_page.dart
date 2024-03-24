import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:imdb_app/basic/const_val.dart';
import 'package:imdb_app/classes/constructor_class.dart';
import 'package:imdb_app/pages/cast_page.dart';
import 'package:imdb_app/pages/player_page.dart';

class DescribePage extends StatelessWidget {
  const DescribePage({super.key, required this.box});
  final ConstructorClass box;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(box.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: 500,
                  height: 300,
                  child: FittedBox(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                    child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                        child: Image.asset(box.path, width: 100)),
                  ),
                ),
                // SizedBox(height: 500,),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 50.0),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            50), // Adjust the radius as needed
                      ),
                      clipBehavior: Clip.antiAlias,
                      elevation: 20.0,
                      child: Image.asset(
                        box.path,
                        fit: BoxFit.fill,
                        width: 250,
                        height: 300,
                      )),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Wrap(
                  spacing: 20.0,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CastPage(box: box);
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Cast',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 72, 97, 110)),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PlayerPage(box: box);
                        }));
                      },
                      child: Text(
                        'Watch Trailer',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 72, 97, 110)),
                    ),
                  ],
                ),
              ),
              // FittedBox(
              //   child: Text(
              //     box.title,
              //     style: TextStyle(
              //       fontSize: 200.0,
              //     ),
              // textAlign: TextAlign.justify,
              // ),
              // ),
              Text(
                box.story,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
