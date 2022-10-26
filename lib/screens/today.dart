import 'package:flutter/material.dart';



class TodayPage extends StatefulWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Selam userX \nBugün kendini nasıl hissediyorsun"),
              ),
              height: constraints.maxHeight / 5,
            ),
            Container(
              child: Center(
                child: Text("asdasd"),
              ),
              height: constraints.maxHeight / 3,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.black, spreadRadius: 5),
                ],
              ),
            ),
            Container(
              child: Center(
                child: Text("asdasd"),
              ),
              height: constraints.maxHeight / 3,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.black, spreadRadius: 5),
                ],
              ),
            )
          ],
        );
      },
    ),),);
  }
}
