import 'package:flutter/material.dart';
import 'package:foody/book_page.dart';
import 'package:foody/detail_page.dart';
import 'package:foody/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> list = [
    HomePage(),
    DetailPage(),
    BookPage(),
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: select,
        onTap: (value) {
          setState(
            () {
              select = value;
            },
          );
        },
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        iconSize: height * 0.04,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_border,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            label: "",
          ),
        ],
      ),
      body: list[select],
    );
  }
}
