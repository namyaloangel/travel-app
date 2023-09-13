import 'dart:core';
import 'package:flutter/material.dart';
import 'package:myapp/pages/navpages/my_page.dart';
import 'package:myapp/pages/navpages/search_page.dart';

import 'bar_item_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List pages = [

    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    var titles;
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: 0,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:titles["Home"], icon:const Icon(Icons.apps)),
          BottomNavigationBarItem(label:titles["Bar"], icon:const Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:titles["Search"], icon:const Icon(Icons.search)),
          BottomNavigationBarItem(label:titles["My"], icon:const Icon(Icons.person)),
        ],
      ),
    );
  }
}



