import 'package:flutter/material.dart';

class AskQ extends StatefulWidget {
  const AskQ({Key? key}) : super(key: key);

  @override
  State<AskQ> createState() => _AskQState();
}

class _AskQState extends State<AskQ> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin:
                  EdgeInsetsDirectional.only(top: 50.0, start: 50.0, end: 50.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsetsDirectional.all(20.0),
                  hintText: 'Bir soru sor.',
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top: 20.0, right: 50.0),
              height: 50.0,
              width: 150.0,
              child: TextButton(
                child: const Text('Gönder',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0)),
                onPressed: () {
                  CircularProgressIndicator(
                    value: 10.0,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
