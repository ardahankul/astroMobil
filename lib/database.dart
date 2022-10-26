import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

Future dataConnect() async{
  var connection = PostgreSQLConnection(
    "10.0.2.2",
    5432,
    "deneme",
    username:"postgres",
    password:"postgres" ,
  );
  connection.open().then((value) {
    debugPrint("Database Connected!");
  });
}


