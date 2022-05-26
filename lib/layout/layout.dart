import 'package:flutter/material.dart';
import 'package:untitled3/screens/add.dart';
import 'package:untitled3/screens/home.dart';
import 'package:untitled3/screens/notification.dart';
import 'package:untitled3/screens/profile.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
int currentIndex=0;
  List<Widget> pages = [
    const HomeScreen(),
    const AddScreen(),
    const Notificationview(),
    const Profile(),
  ];
  void nav (int index) {
    setState(() {
      currentIndex =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: nav,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
    );
  }
}
