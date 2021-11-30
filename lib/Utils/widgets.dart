
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';

class Widgetes {

 static Future<void> _setwallpaper(location,context,String imageurl) async {
     imageurl = imageurl;
    var file = await DefaultCacheManager().getSingleFile(imageurl);
    try {
      WallpaperManagerFlutter().setwallpaperfromFile(file, location);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Wallpaper updated'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error Setting Wallpaper'),
        ),
      );
      print('giii $e');
    }
  }

  static text(
    
      String text, double fontsize, Color textcolor) {
        return
    Text(
      text,
      style: TextStyle(
           fontSize: fontsize, color: textcolor),
    );
  }
}
