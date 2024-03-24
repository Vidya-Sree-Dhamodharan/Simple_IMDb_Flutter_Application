import 'package:flutter/material.dart';
import 'package:imdb_app/classes/constructor_class.dart';
import 'package:imdb_app/widget/cast_card_widget.dart';
import 'package:imdb_app/classes/cast_constructor.dart';

class CastPage extends StatelessWidget {
  CastPage({super.key,required this.box});
  ConstructorClass box;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(box.title),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    box.c1,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)
                  )),
                  Image.asset(
                    box.c1im,
                    height: 100,
                    width: 90,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    box.c2, style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
                  )),
                  Image.asset(
                    box.c2im,
                    height: 100,
                    width: 90,
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    box.c3,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)
                  )),
                  Image.asset(
                    box.c3im,
                    height: 100,
                    width: 90,
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    box.c4,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)
                  )),
                  Image.asset(
                    box.c4im,
                    height: 100,
                    width: 90,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
