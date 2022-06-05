import 'package:flutter/material.dart';
import 'package:plantapp/screens.dart/navigationdrawer.dart';

class Screenone extends StatefulWidget {
  const Screenone({Key? key}) : super(key: key);

  @override
  State<Screenone> createState() => _ScreenoneState();
}

class _ScreenoneState extends State<Screenone> {
  @override
  Widget build(BuildContext context) {
    var position;
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
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      color: Colors.green,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      // top: 190,
                      right: 0,
                      child: Container(
                        margin: EdgeInsets.all(40),
                        // padding:
                        //     EdgeInsets.symmetric(vertical: 20.0, horizontal: 55.0),
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(0, 10),
                          //       color: Colors.black,
                          //       blurRadius: 50)
                          // ]
                        ),
                        child: const TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "search here",
                              hintStyle: TextStyle(
                                color: Colors.blueGrey,
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon: Icon(Icons.search_rounded)),
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(70.0),
                      // child: Text(
                      //   "Plant",
                      //   style: TextStyle(fontSize: 22.0),
                      // ),
                      child: Image.asset("assets/ktm1.jpg"),
                    ),
                  );
                }),
                itemCount: 10,
              ),
            ),
            Container(
              height: 500,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
