import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/bloc/cart_bloc.dart';
//import 'package:testing/pages/real_home.dart';
import 'package:testing/view/home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartBlock()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      title: 'Station The Food',
      home: HomeNew(),
    );
  }
}
