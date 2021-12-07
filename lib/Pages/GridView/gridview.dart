import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:wallpaper/Pages/DetailScreen/detailscreen.dart';
import 'package:wallpaper/Pages/HomePage/home_page.dart';

class GridViewPage extends StatefulWidget {
  var image;
  String category;

  GridViewPage({
    Key? key,
    @required this.image,
    required this.category,
  }) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      builder: Builder(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  toolbarHeight: MediaQuery.of(context).size.height * 0.05,
                  leading: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_rounded)),
                ),
                backgroundColor: Colors.black,
                body: Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  child: StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 12,
                      itemCount: widget.image.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailScreen(
                                            imageindex: widget.image[index],
                                            imageurl: widget.image)));
                          },
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                child: Image(
                                    image: NetworkImage(
                                      widget.image[index],
                                    ),
                                    fit: BoxFit.cover),
                              )),
                        );
                      },
                      staggeredTileBuilder: (index) {
                        return StaggeredTile.count(1, index.isEven ? 1.5 : 2.0);
                      }),
                ),
              )),
    );
  }
}
