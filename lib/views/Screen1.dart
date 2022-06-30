import 'package:flutter/material.dart';

class Splash_home extends StatefulWidget {
  const Splash_home({Key? key}) : super(key: key);

  @override
  State<Splash_home> createState() => _Splash_homeState();
}

class _Splash_homeState extends State<Splash_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "assets/splash.png",
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Image.asset(
            "assets/logo.png",
          ),
        )
      ]),
    );
  }
}
