import 'package:flutter/widgets.dart';

class Wrapitem extends StatelessWidget {
  int? number;
  Wrapitem(this.number);
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
    return Container(
      width: 120,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(images), fit: BoxFit.cover)),
    );
  }
}
