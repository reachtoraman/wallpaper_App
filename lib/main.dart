import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaper/Pages/GridView/gridview.dart';
import 'package:wallpaper/Pages/HomePage/home_page.dart';
import 'package:wallpaper/Pages/SplashScreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const  SystemUiOverlayStyle(
    statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    
    )
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper App',
      home: HomePage(),
    );
  }
}
