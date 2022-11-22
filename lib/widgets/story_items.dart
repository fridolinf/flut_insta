import 'package:flutter/material.dart';
import 'dart:math';

class StoryItems extends StatelessWidget {
  const StoryItems({
    Key? key,
    required this.title,
    required this.random,
  }) : super(key: key);

  final String title;
  final int random;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(40)),
            ),
            Container(
              width: 77,
              height: 77,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white, width: 5),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://picsum.photos/id/${random + 1}/130"),
                      fit: BoxFit.cover)),
            ),
          ]),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
