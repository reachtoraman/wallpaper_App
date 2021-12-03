import 'package:file/src/interface/file.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/Utils/widgets.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class DetailScreen extends StatefulWidget {
  var imageindex;

  DetailScreen({@required this.imageindex, Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: NetworkImage(widget.imageindex),
                fit: BoxFit.cover,
              ),
            ),
            GestureDetector(
              onTap: () {
                _showMyDialog();
              },
              child: Container(
                  height: 50,
                  margin: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: MediaQuery.of(context).size.height * 0.90),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow:[BoxShadow(
                      color: Colors.black.withOpacity(0.75),
                      offset: const Offset(0, 0)
                    )],
                   
                  ),
                  child: Center(
                    child: Widgetes.text('Set as Wallpaper', 25, Colors.white54),
                  )),
            )
          ],
        ));
  }

  Future _setwallpaperHomeScreen(
    location,
  ) async {
    final imageurl = widget.imageindex;
    var file = await DefaultCacheManager().getSingleFile(imageurl);
    try {
      WallpaperManagerFlutter().setwallpaperfromFile(file, location);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Wallpaper updated on Home Screen'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error Setting Wallpaper'),
        ),
      );
      print('giii $e');
    }
  }

  Future _setwallpaperBothScreen(
    location,
  ) async {
    final imageurl = widget.imageindex;
    var file = await DefaultCacheManager().getSingleFile(imageurl);
    try {
      WallpaperManagerFlutter().setwallpaperfromFile(file, location);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Wallpaper updated on Both Screeen'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error Setting Wallpaper'),
        ),
      );
      print('giii $e');
    }
  }

  Future _setwallpaperLockScreen(
    location,
  ) async {
    final imageurl = widget.imageindex;
    var file = await DefaultCacheManager().getSingleFile(imageurl);
    try {
      WallpaperManagerFlutter().setwallpaperfromFile(file, location);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Wallpaper updated on Lock Screen'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error Setting Wallpaper'),
        ),
      );
      print('giii $e');
    }
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    _setwallpaperHomeScreen(
                        WallpaperManagerFlutter.HOME_SCREEN);
                  },
                  child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                         color: Color(0XBF000000),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20)
                         

                        ),
                      ),
                      child: Center(
                        child: Widgetes.text('Home Screen', 20, Colors.white54),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    _setwallpaperLockScreen(
                        WallpaperManagerFlutter.LOCK_SCREEN);
                  },
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color(0XBF000000),
                        borderRadius:BorderRadius.all(
                          Radius.circular(20))),
                      
                    child: Center(
                        child: Widgetes.text('Lock Screen', 20, Colors.white54)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {
                      _setwallpaperBothScreen(
                          WallpaperManagerFlutter.BOTH_SCREENS);
                    },
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                           color: Color(0XBF000000),
                          borderRadius: BorderRadius.all(
                          Radius.circular(20))),
                      child: Center(
                          child:
                              Widgetes.text('Both Screen', 20, Colors.white54)),
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
