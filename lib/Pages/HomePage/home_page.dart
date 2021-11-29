import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

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
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(
                                    images[index],
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
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
                                child:
                                    Widgetes.text('Category', 30, Colors.white),
                              )),
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
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
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
                      width: 160,
                      height: 160,
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
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                        width: 160,
                        height: 160,
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
