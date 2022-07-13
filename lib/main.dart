// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:estigmam/components/widgets.dart';
import 'package:estigmam/my_icons_icons.dart';
import 'package:estigmam/screens/HomePageInEnglish.dart';
import 'package:flutter/cupertino(1).dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "eng": (context) => HomeInEnglish(),
      },
      debugShowCheckedModeBanner: false,
      home: MainSplashScreen(),
    );
  }
}

class MainSplashScreen extends StatelessWidget {
  const MainSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff195BC7),
              Color(0xff0D2E64),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/splash.jpg"),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage(
                        "images/splash.jpg",
                      ),
                    ),
                  ),
                ),
                radius: 100,
              ),
            ],
          ),
        ),
        splashIconSize: double.infinity,
        duration: 3000,
        nextScreen: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff195BC7),
            Color(0xff0D2E64),
          ], begin: Alignment.center, end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 110,
            ),
            Image.asset("images/splash.jpg"),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, right: 30, left: 50, bottom: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("eng");
                    },
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: defaultContainer(
                            contColor: Colors.white,
                            contWidth: 131,
                            contHeight: 51,
                            btnTxt: "English",
                            btnColor: Colors.black,
                            txtSize: 17)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: defaultContainer(
                            contColor: Colors.white,
                            contWidth: 131,
                            contHeight: 51,
                            btnTxt: "العربية",
                            btnColor: Colors.black,
                            txtSize: 17)),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " يمكنك تغيير اللغة في أي وقت",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "من خلال اعدادات الحساب لديك",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
