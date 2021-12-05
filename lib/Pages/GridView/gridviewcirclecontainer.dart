import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper/Pages/DetailScreen/detailscreen.dart';
import 'package:wallpaper/Pages/DetailScreen/detailscreencirclellist.dart';
import 'package:wallpaper/Pages/HomePage/home_page.dart';

class GridViewCircleContainerPage extends StatefulWidget {
  var image;
  var category;


  GridViewCircleContainerPage({
    Key? key,@required this.category,@required this.image
   
  }) : super(key: key);

  @override
  _GridViewCircleContainerPageState createState() => _GridViewCircleContainerPageState();
}

class _GridViewCircleContainerPageState extends State<GridViewCircleContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: MediaQuery.of(context).size.height * 0.05,
        leading: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HomePage()));
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
            itemCount:widget.image.length ,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>

                              DetailScreenCircleListPage(imageindex: widget.image[index],
                              imageurl:widget.image)
                              )
                              );
                },
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image(
                          image: NetworkImage(
                            widget.image[index]
                            ,
                          ),
                          fit: BoxFit.cover),
                    )),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.5 : 2.0);
            }),
      ),
    );
  }
}
