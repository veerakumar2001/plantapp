import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:plantapp/screens.dart/order.dart';
import 'package:plantapp/screens.dart/task.dart';

class require extends StatefulWidget {
  require(
      {Key? key,
      required this.image,
      required this.price,
      required this.title,
      this.ontouch})
      : super(key: key);
  String? image;
  int? price;
  String? title;
  Function()? ontouch;

  @override
  State<require> createState() => _requireState();
}

class _requireState extends State<require> {
  @override
  Widget build(BuildContext context) {
    // image;
    //var press;

    // var ontouch;
    return GestureDetector(
      onTap: widget.ontouch,
      child: Container(
        margin: EdgeInsets.all(20),
        // height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          children: [
            Image.asset(
              //"assets/ktm1.jpg"
              widget.image!,

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
                        text: widget.title.toString().toUpperCase(),
                        style: const TextStyle(color: Colors.black))
                  ])),
                  Spacer(),
                  Text(
                    widget.price.toString(),
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
