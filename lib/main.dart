import 'package:bank_nation/pages/home_page.dart';
import 'package:bank_nation/pages/task_three.dart';
import 'package:bank_nation/pages/task_two.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: TaskTwo());
  }
}
