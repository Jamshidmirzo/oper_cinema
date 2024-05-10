import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oper_cinema/thirditem.dart';

class Thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 42, 103),
        title: const Text(
          'Download',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Color.fromARGB(255, 3, 42, 103),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'List Movie',
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        'Downloading',
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 5,
                    decoration: const BoxDecoration(color: Colors.grey),
                    child: Row(
                      children: [
                        const Spacer(),
                        Container(
                          width: 200,
                          height: 5,
                          decoration:
                              const BoxDecoration(color: Colors.deepPurple),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Thirditem(0, 'Bolt (2017)'),
                  Thirditem(1, 'Donald duck (2007)'),
                  Thirditem(2, 'Fines (2008)'),
                  Thirditem(3, 'Cars (2000)'),
                  Thirditem(4, 'Mickey Mouse(2017)'),
                  Thirditem(5, 'Tom and Jerry(2011)'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
