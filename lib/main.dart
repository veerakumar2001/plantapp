import 'package:flutter/material.dart';
import 'package:plantapp/splash.dart';

void main() {
  runApp(const plantapp());
}

class plantapp extends StatefulWidget {
  const plantapp({Key? key}) : super(key: key);

  @override
  State<plantapp> createState() => _plantappState();
}

class _plantappState extends State<plantapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
