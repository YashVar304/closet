import 'package:closet/chats.dart';
import 'package:closet/discover.dart';
import 'package:closet/groups.dart';
import 'package:closet/mycloset.dart';
import 'package:closet/saved.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  List pages = [
    const MyCloset(),
    const Groups(),
    const Discover(),
    const Saved(),
    const Chats(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  label: "My Closet"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group_outlined), label: "Groups"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                  ),
                  label: "Saved"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.chat_bubble_outline_outlined,
                  ),
                  label: "Chats"),
            ]),
      ),
    );
  }
}
