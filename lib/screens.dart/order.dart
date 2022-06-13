// ignore_for_file: deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:plantapp/screens.dart/required.dart';
import 'package:plantapp/screens.dart/screentwo.dart';
import 'package:plantapp/screens.dart/toggle.dart';
import 'package:video_player/video_player.dart';

class order extends StatefulWidget {
  order({
    Key? key,
    required this.image,
    required this.price,
    required this.title,
  }) : super(key: key);
  String? image;
  int? price;
  String? title;

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  VideoPlayerController? _controller;
  Future<void>? _initializeVideoPlayerFuture;
  void initState() {
    _controller = VideoPlayerController.asset("assets/plantvedio.mp4");
    //_controller = VideoPlayerController.network(
    //  "assets/plantvedio2.mp4");
    _initializeVideoPlayerFuture = _controller!.initialize();
    _controller!.setLooping(true);
    _controller!.setVolume(1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 102, 210, 105),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 390,
              left: 0,
              bottom: 0,
              right: 200,
              child: Column(
                children: [
                  Container(
                    //  color: Colors.black,
                    height: 50,
                    width: 50,
                    // child: IconButton(
                    //   icon: Icon(Icons.ac_unit),
                    //   onPressed: () {},
                    // ),
                  )
                  // Container(
                  //   //height: MediaQuery.of(context).size.height * 0.50,
                  //   width: 50,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(30),
                  //       boxShadow: [
                  //         BoxShadow(
                  //             offset: Offset(0, 10),
                  //             blurRadius: 20,
                  //             color: Colors.green)
                  //       ]),
                  //   // child: InkWell(
                  //   //   child: Icon(Icons.info),
                  //   //   onTap: () {
                  //   //     print("hello");
                  //   //   },
                  //   // ),
                  // ),
                ],
              ),
            ),
            Positioned(
                top: 100,
                left: 130,
                right: 0,
                bottom: 100,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Colors.green.withOpacity(0.23))
                      ],
                      color: Colors.white,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        // padding: EdgeInsets.all(20),
                        children: [
                          Container(
                            // height: 100,
                            width: 200,
                            child: CarouselSlider(
                              items: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  color: Colors.blue,
                                  child: Image.asset(
                                    widget.image!,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                                // SizedBox(
                                // width: 10,
                                // ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  color: Colors.blue,
                                  child: InkWell(
                                    child: FutureBuilder(
                                      future: _initializeVideoPlayerFuture,
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return Center(
                                            child: AspectRatio(
                                              aspectRatio: 1 / 1,
                                              // _controller!.value.aspectRatio,
                                              child: VideoPlayer(_controller!),
                                            ),
                                          );
                                        } else {
                                          return Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }
                                      },
                                    ),
                                    onTap: () {
                                      setState(() {
                                        if (_controller!.value.isPlaying) {
                                          _controller!.pause();
                                        } else {
                                          _controller!.play();
                                        }
                                      });
                                    },
                                  ),
                                )
                              ],
                              //    options: CarouselOptions(),
                              //   options: CarouselOptions(

                              // autoPlay: false),
                              options: CarouselOptions(
                                height: 180.0,
                                enlargeCenterPage: true,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                viewportFraction: 0.8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    // child: Image.asset(
                    //   widget.image!,

                    //   fit: BoxFit.scaleDown,
                    // ),
                    )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, //background color of button
                            side: BorderSide(
                                width: 3,
                                color: Colors
                                    .greenAccent), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.all(
                                20) //content padding inside button
                            ),
                        onPressed: () {},
                        child: Text("ADD To Favorites")),
                  ),
                  SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green, //background color of button
                            side: BorderSide(
                                width: 3,
                                color: Colors
                                    .greenAccent), //border width and color
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder(
                                //to set border radius to button
                                borderRadius: BorderRadius.circular(30)),
                            padding: EdgeInsets.all(
                                20) //content padding inside button
                            ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const toggle()));
                        },
                        child: Text("Buy Now")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       if (_controller!.value.isPlaying) {
      //         _controller!.pause();
      //       } else {
      //         _controller!.play();
      //       }
      //     });
      //   },
      //   child:
      //       Icon(_controller!.value.isPlaying ? Icons.pause : Icons.play_arrow),
      // ),
    );
  }
}
