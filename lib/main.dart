import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:showcaseview/showcaseview.dart';
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
      systemNavigationBarColor: Colors.black,
      systemNavigationBarDividerColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.dark,
    
    )
    );

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper App',
      home: SplashScreen(),
      // home: Scaffold(
      //   body: ShowCaseWidget(
      //     onStart: (index, key) {
      //       log('onStart: $index, $key');
      //     },
      //     onComplete: (index, key) {
      //       log('onComplete: $index, $key');
      //       if (index == 4)
      //         SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
      //             .copyWith(
      //                 statusBarIconBrightness: Brightness.dark,
      //                 statusBarColor: Colors.white));
      //     },
      //     blurValue: 1,
      //     builder: Builder(builder: (context) => const HomePage()),
      //     autoPlay: true,
      //     autoPlayDelay: Duration(seconds: 3),
      //     autoPlayLockEnable: false,
      //   ),
      // ),
    );
  }

 
}
