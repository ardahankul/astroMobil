import 'package:flutter/material.dart';
List liste = ["a","b","c","d","e","f","g","ğ","h","ı","i"];

class TodayPage extends StatelessWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                margin: EdgeInsetsDirectional.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0)),
                child: Text(liste[index]),
              );
            },
            childCount: liste.length,
          ),
        ),
      ],
    );
  }
}
