import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaper/Pages/HomePage/home_page.dart';
import 'package:wallpaper/Pages/SplashScreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
    const  SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    
    );
     return const  MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'Wallpaper App',
       home: SplashScreen(),


       
     );
   }
 }