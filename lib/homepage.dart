import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:oper_cinema/cartoons.dart';

import 'package:oper_cinema/secondpage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Color.fromARGB(255, 3, 42, 103),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 50, right: 20, left: 20)),
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
                    style: TextStyle(color: Colors.grey.shade800, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Recent research',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                const Chip(
                  backgroundColor: Color.fromARGB(255, 1, 36, 62),
                  label: Text(
                    'Marvel',
                    style: TextStyle(color: Colors.white),
                  ),
                  avatar: Icon(Icons.watch_later_rounded),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Chip(
                  backgroundColor: Color.fromARGB(255, 1, 36, 62),
                  label: Text(
                    'Capitan America',
                    style: TextStyle(color: Colors.white),
                  ),
                  avatar: Icon(Icons.watch_later_rounded),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Chip(
                  backgroundColor: Color.fromARGB(255, 1, 36, 62),
                  label: Text(
                    'Capitan Marvel',
                    style: TextStyle(color: Colors.white),
                  ),
                  avatar: Icon(Icons.watch_later_rounded),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Chip(
                  backgroundColor: Color.fromARGB(255, 1, 36, 62),
                  label: Text(
                    'Thor',
                    style: TextStyle(color: Colors.white),
                  ),
                  avatar: Icon(Icons.watch_later_rounded),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Secondpage();
                        },
                      ),
                    );
                  },
                  child: const Chip(
                    backgroundColor: Color.fromARGB(255, 1, 36, 62),
                    label: Text(
                      'Bolt ⚡️',
                      style: TextStyle(color: Colors.white),
                    ),
                    avatar: Icon(Icons.watch_later_rounded),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Cartoons(0),
                  Cartoons(1),
                  Cartoons(2),
                  Cartoons(3),
                  Cartoons(4),
                  Cartoons(5),
                  Cartoons(0),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Recomendation for you',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Cartoons(1),
                  Cartoons(2),
                  Cartoons(3),
                  Cartoons(4),
                  Cartoons(0),
                  Cartoons(5),
                  Cartoons(2),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 3, 42, 103),
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 3, 42, 103),
                icon: Icon(CupertinoIcons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.save_alt_outlined), label: 'Save'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_for_offline), label: 'Dowload'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account')
          ]),
    );
  }
}
