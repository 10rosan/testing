import 'package:flutter/material.dart';
import 'package:testing/pages/register.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: 'Station The Food',
      home: RegisterPage(),
    );
  }
}
