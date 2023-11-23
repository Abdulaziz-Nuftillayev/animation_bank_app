import 'package:flutter/material.dart';
import 'package:untitled/animation_page_2/animation_2.dart';
import 'package:untitled/animation_page_3/animation_3.dart';
import 'animation_page_1/animation_1.dart';

  void main() {
    runApp(const MyApp());
  }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  const AnimationsOne(),
        'animation_2': (context) => const AnimationsTwo(),
        'animation_3': (context) => const AnimationsThree(),
      },
    );
  }
}
