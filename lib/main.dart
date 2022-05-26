import 'package:flutter/material.dart';
import 'package:untitled3/screens/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Task 01',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
                color: Colors.black
            ),
            color: Colors.white,
            elevation: 0
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey
        ),
        primarySwatch: Colors.blue,
      ),
      home:Login_Screen() ,
    );
  }
}


