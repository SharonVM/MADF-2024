import 'package:flutter/material.dart';
import 'nestedscrollviewdemo.dart';
import 'pageviewdemo.dart';
import 'pageviewdemo2.dart';
import 'singlechscrollviewdemo.dart';
import 'bottomnavbardemo.dart';
import 'listvdemo2.dart';
import 'lab_eleven.dart';
import 'listvdemo.dart';
import 'listbuildall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const singlescrolldemo()//NestedViewDemo(),// PageViewDemo2(),//pageviewdemo(),//BottomNavDemo(),//MyListBuildApp(),//ListVdemo(),//ListVdemo2()
    );
  }
}
