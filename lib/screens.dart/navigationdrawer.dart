import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class navigationdrawer extends StatefulWidget {
  const navigationdrawer({Key? key}) : super(key: key);

  @override
  State<navigationdrawer> createState() => _navigationdrawerState();
}

class _navigationdrawerState extends State<navigationdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer();
  }
}
