import 'package:flutter/material.dart';
import 'package:oper_cinema/cartoons.dart';

// ignore: must_be_immutable
class Films extends StatelessWidget {
  int? number;
  Films(this.number);
  String images = '';
  List cartoons = [
    'assets/images/bolt.png',
    'assets/images/donald.png',
    'assets/images/fines.png',
    'assets/images/macquuen.png',
    'assets/images/mikey.png',
    'assets/images/tom.png'
  ];
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i <= cartoons.length; i++) {
      if (number == i) {
        images = cartoons[i];
      }
    }
    return Chip(
        backgroundColor: const Color.fromARGB(255, 1, 36, 62),
        label: Cartoons(number));
  }
}
