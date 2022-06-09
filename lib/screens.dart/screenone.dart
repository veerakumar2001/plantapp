// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:plantapp/screens.dart/navigationdrawer.dart';
import 'package:plantapp/screens.dart/order.dart';
import 'package:plantapp/screens.dart/recomended.dart';
import 'package:plantapp/screens.dart/required.dart';
import 'package:plantapp/screens.dart/screentwo.dart';
import 'package:plantapp/screens.dart/task.dart';

class Screenone extends StatefulWidget {
  const Screenone({Key? key}) : super(key: key);

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    // var position;
    return Scaffold(
      drawer: navigationdrawer(),
      appBar: AppBar(
        elevation: 0,
        title: const Text('plant'),
        centerTitle: true,
        //leading: IconButton(onPressed: (() {}), icon: Icon(Icons.menu)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    color: Colors.green,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    //top: 200,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(40),
                      // padding:
                      //     EdgeInsets.symmetric(vertical: 20.0, horizontal: 55.0),
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                color: Colors.green,
                                blurRadius: 50)
                          ]),
                      child: const TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "search here",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: Icon(Icons.search_rounded)),
                      ),
                    )),
              ],
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  children: [
                    Text("Recomended"),
                    // DropDownList(
                    //   buttonWidth: 50,
                    //   items: ['hsi', 'hrllo', 'byr'],
                    //   title: 'drop',
                    // ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),

            // Container(
            //   margin: EdgeInsets.all(20),
            //   height: MediaQuery.of(context).size.height * 0.35,
            //   width: MediaQuery.of(context).size.width * 0.90,
            //   color: Colors.white,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: ((context, index) {
            //       return Card(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.all(Radius.circular(30))),
            //         // child: Padding(
            //         //   padding: EdgeInsets.all(50.0),
            //         // child: Text(
            //         //   "Plant",
            //         //   style: TextStyle(fontSize: 22.0),
            //         // ),
            //         child: Image.asset(
            //           "assets/plant1.jpg",
            //           width: 200,
            //           // fit: BoxFit.fill
            //         ),
            //         // ),
            //       );
            //     }),
            //     itemCount: 10,
            //   ),
            // ),
            // Container(
            //   height: 500,
            //   color: Colors.amber,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: ((context, index) {
            //       return Card(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.all(Radius.circular(30))),
            //         // child: Padding(
            //         //   padding: EdgeInsets.all(50.0),
            //         // child: Text(
            //         //   "Plant",
            //         //   style: TextStyle(fontSize: 22.0),
            //         // ),
            //         child: Image.asset(
            //           "assets/plant1.jpg",
            //           width: 200,
            //           // fit: BoxFit.fill
            //         ),
            //         // ),
            //       );
            //     }),
            //     itemCount: 10,
            //   ),
            // ),

            // recomended container
            Container(
              child: screentwo(),
            ),
          ],
        ),
      ),
    );
  }
}
