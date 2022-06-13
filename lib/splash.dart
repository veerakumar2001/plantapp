import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:plantapp/screens.dart/login.dart';
import 'package:plantapp/screens.dart/screenone.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetoscreen1();
  }

  _navigatetoscreen1() async {
    await Future.delayed(const Duration(milliseconds: 4500), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => const Screenone())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(70)),
          Container(
            padding: EdgeInsets.all(30),
            child: Lottie.asset("assets/plant.json"),
          ),
          Container(
            child: Lottie.asset("assets/welcomeplant.json"),
          ),
        ],
      ),
    );
    // Scaffold(
    //   body: Container(
    //     child: Column(
    //       children: [Lottie.asset("assets/welcomeplant.json")],
    //     ),
    //   ),
    // );
  }
}
