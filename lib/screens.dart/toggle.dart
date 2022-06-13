import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class toggle extends StatefulWidget {
  const toggle({Key? key}) : super(key: key);

  @override
  State<toggle> createState() => _toggleState();
}

class _toggleState extends State<toggle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.white,
      
    );
  }
}
