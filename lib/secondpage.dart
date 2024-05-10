import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oper_cinema/cartoons.dart';
import 'package:oper_cinema/thirdpage.dart';
import 'package:oper_cinema/wrapitem.dart';

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 42, 103),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Color.fromARGB(255, 3, 42, 103),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(right: 20, left: 20)),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade700),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.search,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Search by title,actor,genre',
                      style:
                          TextStyle(color: Colors.grey.shade800, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return Thirdpage();
                            },
                          ),
                        );
                      },
                      child: Wrapitem(0)),
                  Wrapitem(1),
                  Wrapitem(2),
                  Wrapitem(3),
                  Wrapitem(4),
                  Wrapitem(5),
                  Wrapitem(0),
                  Wrapitem(1),
                  Wrapitem(2),
                  Wrapitem(3),
                  Wrapitem(4),
                  Wrapitem(5),
                  Wrapitem(0),
                  Wrapitem(1),
                  Wrapitem(2),
                  Wrapitem(3),
                  Wrapitem(4),
                  Wrapitem(5),
                  Wrapitem(0),
                  Wrapitem(5),
                  Wrapitem(0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
