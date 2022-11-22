import 'package:flutter/material.dart';
import 'package:tutorial/database.dart';
import 'package:tutorial/screens/AskQuestion.dart';
import 'package:tutorial/screens/book.dart';
import 'package:tutorial/screens/report.dart';
import 'package:tutorial/screens/template.dart';
import 'package:tutorial/screens/today.dart';

void main() {
  dataConnect();
  runApp(userX());
}

class userX extends StatefulWidget {
  @override
  State<userX> createState() => _userXState();
}

class _userXState extends State<userX> {
  int currentIndex = 0;
  final screens = [
    TodayPage(),
    AskQ(),
    Report(),
    BookPage(),
    Template(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("AstroX App"),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(size: 18.0),
          selectedIconTheme: IconThemeData(size: 25.0),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
                label: "Günlük İçerik", icon: Icon(Icons.star_rounded)),
            BottomNavigationBarItem(
                label: "Soru Sor", icon: Icon(Icons.question_answer_rounded)),
            BottomNavigationBarItem(
                label: "Rapor", icon: Icon(Icons.collections_bookmark)),
            BottomNavigationBarItem(
                label: "Kitap", icon: Icon(Icons.menu_book_rounded)),
            BottomNavigationBarItem(
                label: "Şablon", icon: Icon(Icons.star_outline_outlined)),
          ],
        ),
      ),
    );
  }
}
