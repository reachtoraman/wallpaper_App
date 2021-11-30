import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallpaper/Pages/GridView/gridview.dart';
import 'package:wallpaper/Utils/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();
  int activeindex = 0;
  final List<String> images = [
     'https://cdn.wallpapersafari.com/68/46/hOrjCP.png',
    'https://cdn.wallpapersafari.com/46/62/TcCaiP.png',
    'https://cdn.wallpapersafari.com/22/14/DWoEp7.jpg',
    'https://cdn.wallpapersafari.com/87/14/9ZWcE7.png',
    'https://cdn.wallpapersafari.com/92/0/XTNhZ9.jpg',
    'https://mcdn.wallpapersafari.com/medium/54/36/pY2G60.jpg',
    'https://cdn.wallpapersafari.com/62/76/IPtain.jpg',
    'https://cdn.wallpapersafari.com/64/46/geWc6k.jpg',
    'https://cdn.wallpapersafari.com/21/93/MY4yvz.jpg',
    'https://cdn.wallpapersafari.com/70/81/gIkY8L.jpg', ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60, left: 20),
              alignment: Alignment.centerLeft,
              child: Widgetes.text('Wallpaper Fever', 30, Colors.white60),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 5),
              height: 8,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white60),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 20),
              alignment: Alignment.centerLeft,
              child: Widgetes.text(
                  '"Collection of Premium High Quality Wallpapers Explore\n Your Favourite Category"..',
                  15,
                  Colors.white60),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realindex) => Stack(
                        children: [
                          Container(
                            height: 300,
                            width: 300,
                          
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: ClipRRect(
                            
                                borderRadius: BorderRadius.circular(20),
                                child:Hero(tag:'hello', child: 
                                 Image(
                                  image: NetworkImage(
                                    images[index],
                                  ),
                                  fit: BoxFit.cover,
                                ))),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                    BuildContext context,
                                  ) =>
                                        GridViewPage(tag:'hello',
                                          image:images)));
                            },
                            child: Container(
                                height: 300,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  color: const Color(0xb3000000),
                                  border: Border.all(
                                    color: Colors.white60,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Center(
                                  child: Widgetes.text(
                                      'Category', 30, Colors.white),
                                )),
                          ),
                        ],
                      ),
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) =>
                          setState(() => activeindex = index))),
            ),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: AnimatedSmoothIndicator(
                  activeIndex: activeindex,
                  count: images.length,
                  effect: const CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 20,
                      height: 12,
                      color: Colors.indigo,
                      rotationAngle: 180,
                      verticalOffset: -10,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(2)),
                    ),
                    dotDecoration: DotDecoration(
                      width: 10,
                      height: 10,
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(2)),
                      verticalOffset: 0,
                    ),
                    spacing: 6.0,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(2)),
                      color: Colors.amber),
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(32),
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(2)),
                      child: Image(
                        image: NetworkImage(images[3]),
                        fit: BoxFit.fill
                      )),
                ),
                InkWell(
                  onTap: (){
                  
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                    BuildContext context,
                                  ) =>
                                        GridViewPage(tag:'hello',image:images)));
                  },
                  child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(2),
                              topRight: Radius.circular(32),
                              bottomLeft: Radius.circular(32),
                              bottomRight: Radius.circular(2)),
                          border: Border.all(
                            color: Colors.white60,
                            width: 1,
                          ),
                          color: const Color(0xb3000000)),
                      child: Center(
                        child: Widgetes.text('Category', 30, Colors.white),
                      )),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Widgetes.text('More to See', 20, Colors.white60),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, index) => Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white60,
                            width: 1,
                          ),
                          color: Colors.indigo,
                          shape: BoxShape.circle),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(160),
                          child: Image(
                            image: NetworkImage(images[index]),
                            fit: BoxFit.fill,
                          )),
                    ),
                    InkWell(
                      onTap: (){
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                    BuildContext context,
                                  ) =>
                                        GridViewPage(tag:'hello',image:images)));
                      },
                      child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white60,
                                width: 1,
                              ),
                              color: const Color(0xb3000000),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Widgetes.text('Category', 30, Colors.white),
                          )),
                    ),
                  ],
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
