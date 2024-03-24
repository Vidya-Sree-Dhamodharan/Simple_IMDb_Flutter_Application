import 'package:flutter/material.dart';
import 'package:imdb_app/basic/const_val.dart';
import 'package:imdb_app/classes/constructor_class.dart';
import 'package:imdb_app/classes/constructor_class.dart';
import 'package:blur/blur.dart';
import 'package:imdb_app/pages/describe_page.dart';

class cards_widget extends StatelessWidget {
  const cards_widget({super.key, required this.box});
  final ConstructorClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {// when a card is clicked, go to corresponding page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return  DescribePage(box:box);
            },
          ),
        );
      },
      child: Card(
          child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.star, color: Colors.yellow),
            Text(box.rate),
            SizedBox(
              height: 50,
            ),
          ]),
          Container(
            // padding: EdgeInsets.all(8.0),
            child: Image.asset(height: 250.0, box.path),
          ),
          Text(box.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(box.description,
                textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
          ),
          // SizedBox(
          //   height: val10,
          // )
        ],
      )),
    );
  }
}
