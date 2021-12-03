import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallpaper/Model/modellist.dart';
import 'package:wallpaper/Model/models.dart';
import 'package:wallpaper/Pages/DetailScreen/detailscreen.dart';
import 'package:wallpaper/Pages/GridView/gridview.dart';
import 'package:wallpaper/Pages/HomePage/blank.dart';
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
    'https://i.pinimg.com/564x/e0/35/ae/e035ae369b869ffe858d7a4d26ac2cf6.jpg',
    'https://i.pinimg.com/564x/4f/51/d8/4f51d859b7467d3d1aa17bdab62debe8.jpg',
    'https://i.pinimg.com/564x/bc/c8/27/bcc827db76e65ef05bf2f46fe2ebb1e0.jpg',
    'https://i.pinimg.com/564x/e2/e4/0a/e2e40a9626192f2e37a20afdbcc23f02.jpg',
    'https://i.pinimg.com/564x/ff/0b/c3/ff0bc3eabbd451faf92a21e23ccf61a3.jpg',
    'https://i.pinimg.com/564x/56/ca/fa/56cafab94e1d680eb4bfc1c4e07c6b65.jpg',
    'https://i.pinimg.com/564x/4c/9e/1e/4c9e1e9ff8dbb4d75b5b5ad777d77cc7.jpg',
    'https://i.pinimg.com/564x/c3/21/c5/c321c5604b8cbc40b9f88da6ef3de9c9.jpg',
    'https://i.pinimg.com/564x/e7/d9/10/e7d910675194768e97f6e230774a19a5.jpg',
    'https://i.pinimg.com/564x/f0/13/b4/f013b4f555b44f6ea9505fdb0d2d230d.jpg',
  ];

  @override
  void initState() {
    super.initState();
    laodCategorySecond();
    loadCategoryFirst();
  }

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
                  '"Collection of Premium High Quality Wallpapers Explore Your Favourite Category"..',
                  15,
                  Colors.white60),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: CarouselSlider.builder(
                  itemCount: category1.length,
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
                                child: Image(
                                  image: NetworkImage(
                                    category1[index].url[index],
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (
                                    BuildContext context,
                                  ) =>
                                          GridViewPage(
                                              image:
                                                  category1[index].url,
                                              category: category1[index]
                                                  .category)));
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
                                      category1[index].category,
                                      30,
                                      Colors.white),
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
                  count: category1.length,
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
                          image: NetworkImage(category2[0].url[0]),
                          fit: BoxFit.fill)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (
                          BuildContext context,
                        ) =>
                                Blankpage()));
                    // GridViewPage(image: images)));
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
                        child: Widgetes.text(
                            category2[0].category, 30, Colors.white),
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (
                              BuildContext context,
                            ) =>Blankpage()));
                                    // GridViewPage(image: images)));
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
