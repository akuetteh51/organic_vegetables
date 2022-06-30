// import 'package:flutter/material.dart';
// import 'package:organic_vegetsbles/views/Screen1.dart';
// import 'package:organic_vegetsbles/views/dashboard.dart';
// import 'package:organic_vegetsbles/views/login.dart';
// import 'package:splashscreen/splashscreen.dart';

// void main() {
//   return runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     // ignore: unnecessary_new
//     home: new SplashScreen(
//       seconds: 14,
//      imageBackground: ImageProvider(Image.asset(
//             "assets/splash.png",

//           ),)
//           ),
//     ),
//   ));
// }

import 'package:flutter/material.dart';
import 'package:organic_vegetsbles/views/Screen1.dart';
import 'package:organic_vegetsbles/views/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Splash_home();
  }
}
