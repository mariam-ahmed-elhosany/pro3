// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print
import 'package:carousel_slider/carousel_slider.dart';
import 'package:estigmam/components/widgets.dart';
import 'package:estigmam/my_icons_icons.dart';
import 'package:flutter/cupertino(1).dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeInEnglish extends StatelessWidget {
  const HomeInEnglish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              child: Text(
                ("+"),
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {},
              backgroundColor: Color(0xff1a5ac4),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              notchMargin: 10,
              elevation: 0,
              shape: CircularNotchedRectangle(),
              child: Container(
                height: 65,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            icon: Icon(Icons.home_outlined,
                                color: Colors.black12),
                            onPressed: () {}),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.black12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: Icon(MyIcons.dropbox__1_,
                                color: Colors.black12),
                            onPressed: () {}),
                        Text(
                          "Shipments",
                          style: TextStyle(color: Colors.black12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: Icon(Icons.note_add, color: Colors.black12),
                            onPressed: () {}),
                        Text(
                          "Notification",
                          style: TextStyle(color: Colors.black12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: Icon(Icons.person, color: Colors.black12),
                            onPressed: () {}),
                        Text(
                          "Profile",
                          style: TextStyle(color: Colors.black12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 230,
                  child: ImageSlideshow(
                    initialPage: 0,
                    indicatorBackgroundColor: Colors.white,
                    indicatorColor: Colors.blue,
                    isLoop:false,
                    //autoPlayInterval: 3000,

                    children: [
                      defImageSlider(img: "images/img3.png"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                  // child: CarouselSlider(items: [
                  //   Text("data"),
                  //   Text("data"),
                  //   Text("data"),
                  // ], options: CarouselOptions(
                  //   reverse: false,
                  //   viewportFraction: 1.0,
                  //   initialPage: 0,
                  //   scrollDirection: Axis.horizontal,
                  //   autoPlayCurve: Curves.fastOutSlowIn,
                  //   autoPlay: true,
                  //   autoPlayAnimationDuration: Duration(seconds: 3),
                  //
                  // )),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            defaultCol(img: "images/img1.png"),
                            SizedBox(width: 10),
                            defaultCol(img: "images/img2.png"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            defaultCol(img: "images/img3.png"),
                            SizedBox(
                              width: 10,
                            ),
                            defaultCol(img: "images/img4.png"),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(0.0, 0.0),
                            radius: 0.5,
                            colors: [
                              const Color(0xff1a5ac4),
                              const Color(0xff273474)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
