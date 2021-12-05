import 'package:flutter/material.dart';
import 'package:wallpaper/Utils/widgets.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'dart:ui';

class DetailScreenCircleListPage extends StatefulWidget {
  dynamic imageindex;
  dynamic imageurl;

  DetailScreenCircleListPage({
    @required this.imageindex,
    @required this.imageurl,
    Key? key,
  }) : super(key: key);

  @override
  _DetailScreenCircleListPageState createState() => _DetailScreenCircleListPageState();
}

class _DetailScreenCircleListPageState extends State<DetailScreenCircleListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index) {
                    setState(() {
                      widget.imageindex=widget.imageurl[index].toString();
                    });
                  },
                  itemCount: widget.imageurl.length,
                  itemBuilder: (BuildContext context, index) => Image(
                        image: NetworkImage(widget.imageindex),
                        fit: BoxFit.fill,
                      )),

              // child: Image(
              //   image: NetworkImage(widget.imageindex),
              //   fit: BoxFit.cover,

              // ),
            ),
            GestureDetector(
              onTap: () {
                // _showMyDialog();
                bottomsheet();
              },
              child: Container(
                  height: 50,
                  margin: EdgeInsets.only(
                      left: 60,
                      right: 60,
                      top: MediaQuery.of(context).size.height * 0.90),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(color: Colors.indigo
                          //  Color(0XFF069bf7),

                          )
                    ],
                  ),
                  child: Center(
                    child: Widgetes.text('Set as Wallpaper', 20, Colors.white),
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
                        borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child:
                            Widgetes.text('Lock Screen', 20, Colors.white54)),
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
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

  bottomsheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (
        BuildContext context,
      ) =>
          Container(
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.14,
            left: 30,
            right: 30),
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.indigo),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                _setwallpaperHomeScreen(WallpaperManagerFlutter.HOME_SCREEN);
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Home Screen',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 18, bottom: 18),
              color: Colors.white,
              width: 1,
            ),
            GestureDetector(
              onTap: () {
                _setwallpaperLockScreen(WallpaperManagerFlutter.LOCK_SCREEN);
                Navigator.of(context).pop();
              },
              child: Container(
                margin: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Column(
                  children: [
                    Icon(Icons.lock, size: 30, color: Colors.white),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Lock Screen',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 18, bottom: 18),
              color: Colors.white,
              width: 1,
            ),
            GestureDetector(
              onTap: () {
                _setwallpaperBothScreen(WallpaperManagerFlutter.BOTH_SCREENS);
                Navigator.of(context).pop();
              },
              child: Container(
                margin: const EdgeInsets.only(top: 15, left: 8, right: 8),
                child: Column(
                  children: [
                    Icon(Icons.mobile_friendly, size: 30, color: Colors.white),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Both Screen',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
