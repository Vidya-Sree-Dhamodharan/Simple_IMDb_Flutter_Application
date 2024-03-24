import 'package:flutter/material.dart';
import 'package:imdb_app/classes/cast_constructor.dart';

class cast_card_widget extends StatelessWidget {
  cast_card_widget({super.key,required this.cardblock});
  CastConstructor cardblock;
  @override
  Widget build(BuildContext context) {
    return Container(
        child:Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    cardblock.name,
                  )),
                  Image.asset(
                    cardblock.path,
                    height: 100,
                    width: 90,
                  )
                ],
              ),
            ),
          ),
    );
  }
}