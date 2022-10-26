import 'package:flutter/material.dart';


class Astology extends StatefulWidget {
  const Astology({Key? key}) : super(key: key);

  @override
  State<Astology> createState() => _AstologyState();
}

class _AstologyState extends State<Astology> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Astrology')),
    );
  }
}
