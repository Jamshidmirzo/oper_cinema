import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cartoons extends StatelessWidget {
  int? number;
  Cartoons(this.number);
  String images = '';
  List cartoons = [
    'assets/images/bolt.png',
    'assets/images/donald.png',
    'assets/images/fines.png',
    'assets/images/macquuen.png',
    'assets/images/mickey.png',
    'assets/images/tom.png'
  ];
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i <= cartoons.length; i++) {
      if (number == i) {
        images = cartoons[i];
      }
    }
    return Row(
      children: [
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(images), fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
