// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget defaultTxtButton(
        {required String btnTxt,
        required Color btnColor,
        required double txtSize}) =>
    TextButton(
      onPressed: () {},
      child: Text(
        btnTxt,
        style: TextStyle(
            color: btnColor, fontSize: txtSize, fontWeight: FontWeight.normal),
      ),
    );

Widget defaultContainer({
  required Color contColor,
  required double contWidth,
  required double contHeight,
  required String btnTxt,
  required Color btnColor,
  required double txtSize,
}) =>
    Container(
        width: contWidth,
        height: contHeight,
        color: contColor,
        child: Center(
          child: Text(
            btnTxt,
            style: TextStyle(
                color: btnColor,
                fontSize: txtSize,
                fontWeight: FontWeight.normal),
          ),
        ));

Widget defaultCol({required String img}) => ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 155,
        height: 200,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 156,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.fill)),
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Yachting\nDepartment ",
                        style: TextStyle(
                          color: Color(0xff195BC7),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 38,
                      height: 16,
                      color: Color(0xff1A5AC4),
                      child: Center(
                        child: Text(
                          "view",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );

 Widget defImageSlider({required String img })=>ClipRRect(
   borderRadius: BorderRadius.circular(20),

   child: Stack(
     alignment: Alignment.topLeft,
     children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(img),
              fit: BoxFit.fill,
            )
          ),
        ),
       Container(
         color: Color(0XFF1A5AC4).withOpacity(0.3),
         height: 200,
         
       ),
       Column(
         children: [
           Text("FIND YOUR TRIP\nWITH EASE FROM RECREATION",style: TextStyle(
             fontSize: 16,
             color: Colors.white
           ),),
           Text("family cruises\nget your yacht now",style: TextStyle(
               fontSize: 10,
               color: Colors.white
           ),),
           Container(
             color: Colors.white,
             width: 113,
             height: 26,
             child: Text("Show Trips",style: TextStyle(
                 fontSize: 10,
                 color: Color(0xff195BC7)
             ),),
           )
         ],
       )
     ],


   ),
 );
