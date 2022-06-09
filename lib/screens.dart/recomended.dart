import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class recomended extends StatefulWidget {
  const recomended({Key? key}) : super(key: key);

  @override
  State<recomended> createState() => _recomendedState();
}

class _recomendedState extends State<recomended> {
  late final Function press;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  // height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/plant1.jpg",

                        //fit: BoxFit.fill,
                        // height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.green.withOpacity(0.23))
                            ]),
                        child: Row(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Hybiscuss".toUpperCase(),
                                  style: const TextStyle(color: Colors.black))
                            ])),
                            Spacer(),
                            Text(
                              "\$450",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  // height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/plant1.jpg",
                        //fit: BoxFit.fill
                        // height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.green.withOpacity(0.23))
                            ]),
                        child: Row(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Hybiscuss".toUpperCase(),
                                  style: TextStyle(color: Colors.black))
                            ])),
                            Spacer(),
                            Text(
                              "\$450",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  // height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/plant1.jpg",
                        //fit: BoxFit.fill
                        // height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.green.withOpacity(0.23))
                            ]),
                        child: Row(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Hybiscuss".toUpperCase(),
                                  style: TextStyle(color: Colors.black))
                            ])),
                            Spacer(),
                            Text(
                              "\$450",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  // height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/plant1.jpg",
                        //fit: BoxFit.fill
                        // height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.green.withOpacity(0.23))
                            ]),
                        child: Row(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Hybiscuss".toUpperCase(),
                                  style: TextStyle(color: Colors.black))
                            ])),
                            Spacer(),
                            Text(
                              "\$450",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  //color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
