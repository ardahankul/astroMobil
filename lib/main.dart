import 'package:flutter/material.dart';
import 'package:tutorial/screens/astroloji.dart';
import 'package:tutorial/screens/ben.dart';
import 'package:tutorial/screens/profil.dart';
import 'package:tutorial/screens/today.dart';
import 'package:tutorial/database.dart';

void main(){
  dataConnect();
  runApp(userX());
}


class userX extends StatefulWidget {
  @override
  State<userX> createState() => _userXState();
}

class _userXState extends State<userX> {
  int currentIndex = 0;
  final screens =[
    TodayPage(),
    MyPage(),
    Astology(),
    Profile(),
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
                label: "Bugün", icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: "Ben", icon: Icon(Icons.favorite_border_outlined)),
            BottomNavigationBarItem(
                label: "xxxx", icon: Icon(Icons.star_outline_outlined)),
            BottomNavigationBarItem(
                label: "Profil", icon: Icon(Icons.account_circle_outlined))
          ],
        ),
      ),
    );
  }
}
