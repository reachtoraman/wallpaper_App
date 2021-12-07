import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:intl/intl.dart';
import 'package:wallpaper/Utils/widgets.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'dart:ui';

class DetailScreenSingleContainer extends StatefulWidget {
  dynamic imageindex;
  dynamic imageurl;

  DetailScreenSingleContainer({
    @required this.imageindex,
    @required this.imageurl,
    Key? key,
  }) : super(key: key);

  @override
  _DetailScreenSingleContainerState createState() => _DetailScreenSingleContainerState();
}

class _DetailScreenSingleContainerState extends State<DetailScreenSingleContainer> {
  bool isvisible = false;
  
  String? _timeString;
  String? _dateStrng;
 @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    _dateStrng = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getdate());

    this._getTime();
    super.initState();
    this._getdate();
   
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isvisible = !isvisible;
                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    scrollDirection: Axis.vertical,
                    onPageChanged: (index) {
                      setState(() {
                        widget.imageindex = widget.imageurl[index].toString();
                      });
                    },
                    itemCount: widget.imageurl.length,
                    itemBuilder: (BuildContext context, index) => Image(
                          image: NetworkImage(widget.imageindex),
                          fit: BoxFit.fill,
                        )),
              ),
            ),
            GestureDetector(
              
              onTap: () {
                // _showMyDialog();
               isvisible?Container(): bottomsheet();
              },
              child: AnimatedOpacity(
                duration:const Duration(milliseconds: 400),
                opacity: isvisible?0:1,

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
              
                            ),
                      ],
                    ),
                    child: Center(
                      child: Widgetes.text('Set as Wallpaper', 20, Colors.white),
                    )),
              ),
            ),
            Positioned(
                height: MediaQuery.of(context).size.height * 0.20,
                left: 0,
                right: 0,
                child: AnimatedOpacity(
                    duration:const Duration(milliseconds: 400),
                    opacity: isvisible ? 1 : 0,
                    child:const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ))),
                     Positioned(
                bottom: MediaQuery.of(context).size.height * 0.04,
                left: 30,
                
                child: AnimatedOpacity(
                    duration:const Duration(milliseconds: 400),
                    opacity: isvisible ? 1 : 0,
                    child:const Icon(
                      FeatherIcons.phoneCall,
                      color: Colors.white,
                    ))),
                     Positioned(
                bottom: MediaQuery.of(context).size.height * 0.04,
                right: 30,
                
                child: AnimatedOpacity(
                    duration: Duration(milliseconds: 400),
                    opacity: isvisible ? 1 : 0,
                    child:const Icon(
                      FeatherIcons.camera,
                      color: Colors.white,
                    ))),
                       Positioned(
                    top: MediaQuery.of(context).size.height * 0.15,
                    left: 0,
                    right: 0,
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 400),
                      opacity: isvisible ? 1 : 0,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              _timeString.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 45,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Cairo'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                _dateStrng.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Cairo'),
                              ),
                            ),
          ],
                         ),
                      )))] ));
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
  void _getdate() {
    // await _askPermission();
    final String formattedDate =
        DateFormat('EE, dd MMMM ').format(DateTime.now()).toString();
    _dateStrng = formattedDate;
  }

  String formatDate(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm').format(dateTime);
  }

// date time methood
  void _getTime() {
    // await _askPermission();
    final String formattedDateTime =
        DateFormat(' kk:mm  ').format(DateTime.now()).toString();
    _timeString = formattedDateTime;
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm').format(dateTime);
  }
}
