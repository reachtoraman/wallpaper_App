import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallpaper/Pages/HomePage/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomePage())));
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:const Image(image: AssetImage('assets/splashScreen.jpg',),fit: BoxFit.fill,),
      
    );
  }
}