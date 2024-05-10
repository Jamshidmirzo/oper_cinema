import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oper_cinema/cartoons.dart';

// ignore: must_be_immutable
class Thirditem extends StatelessWidget {
  int number;
  String name;
  List menuitem = ['Re-download', 'Details', 'Delete'];
  Thirditem(this.number, this.name);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey.shade100.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Row(
                children: [
                  Cartoons(number),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      Image.asset(
                        'assets/images/disney.png',
                        width: 100,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 170,
                            height: 5,
                            decoration: const BoxDecoration(color: Colors.grey),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  height: 5,
                                  decoration: const BoxDecoration(
                                      color: Colors.deepPurple),
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Ink(
                                child:
                                    Icon(Icons.play_circle_outline_outlined)),
                          ),
                          PopupMenuButton(
                              color: Colors.black,
                              itemBuilder: (ctx) {
                                return [
                                  for (int i = 0; i < menuitem.length; i++)
                                    PopupMenuItem(
                                      child: Text(
                                        menuitem[i],
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                ];
                              })
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
