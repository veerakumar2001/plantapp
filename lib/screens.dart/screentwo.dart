import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plantapp/screens.dart/required.dart';

import 'order.dart';

class screentwo extends StatefulWidget {
  const screentwo({Key? key}) : super(key: key);

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            require(
              image: "assets/plant7.jpg",
              title: "hybiscuss",
              price: 450,
              ontouch: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => order(
                            image: "assets/plant7.jpg",
                            title: "hybiscuss", price: 650,
                          )),
                );
              },
            ),
            require(
              image: "assets/plant5.jpg",
              price: 600,
              title: "ktm",
              ontouch: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => order(
                            image: "assets/plant5.jpg",
                            price: 600,
                            title: 'ktm',
                          )),
                );
              },
            ),
            require(
                image: "assets/plant2.jpg",
                price: 5100,
                title: "A",
                ontouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order(
                              image: "assets/plant2.jpg",
                              price: 5100,
                              title: "A",
                            )),
                  );
                }),
            require(
                image: "assets/plant3.jpg",
                price: 200,
                title: "B",
                ontouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order(
                              image: "assets/plant3.jpg",
                              price: 200,
                              title: "B",
                            )),
                  );
                }),
            require(
                image: "assets/plant4.jpg",
                price: 505,
                title: "C",
                ontouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order(
                              image: "assets/plant4.jpg",
                              price: 505,
                              title: "C",
                            )),
                  );
                }),
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            require(
              image: "assets/plant4.jpg",
              title: "hybiscuss",
              price: 450,
              ontouch: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order(
                              image: "assets/plant4.jpg",
                              title: "hybiscuss",
                              price: 450,
                            )));
              },
            ),
            require(
                image: "assets/plant5.jpg",
                price: 600,
                title: "ktm",
                ontouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order(
                              image: "assets/plant5.jpg",
                              price: 600,
                              title: "ktm",
                            )),
                  );
                }),
            require(
                image: "assets/plant2.jpg",
                price: 5100,
                title: "A",
                ontouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order(
                              image: 'assets/plant2.jpg',
                              title: 'A', price: 700,
                            )),
                  );
                }),
            require(
                image: "assets/plant3.jpg",
                price: 200,
                title: "B",
                ontouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order(
                              image: "assets/plant3.jpg",
                              price: 200,
                              title: "B",
                            )),
                  );
                }),
            require(
                image: "assets/plant4.jpg",
                price: 505,
                title: "C",
                ontouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => order(
                              image: "assets/plant4.jpg",
                              price: 505,
                              title: "C",
                            )),
                  );
                }),
          ],
        ),
      ),
    ]);
  }
}
