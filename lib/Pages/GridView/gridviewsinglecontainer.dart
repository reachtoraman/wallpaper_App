import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wallpaper/Model/modellist.dart';
import 'package:wallpaper/Model/models.dart';
import 'package:wallpaper/Pages/DetailScreen/detailscreen.dart';
import 'package:wallpaper/Pages/DetailScreen/detailscreensinglecontainer.dart';
import 'package:wallpaper/Pages/HomePage/home_page.dart';

class GridViewSingleContainerPage extends StatefulWidget {
var Categoryurl;
var categorytitle;


  GridViewSingleContainerPage({
   @required this.Categoryurl,
 @required this.categorytitle,    
   
  }) ;

  @override
  _GridViewSingleContainerPageState createState() => _GridViewSingleContainerPageState();
}

class _GridViewSingleContainerPageState extends State<GridViewSingleContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            itemCount:widget.Categoryurl.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DetailScreenSingleContainer(imageindex: widget.Categoryurl[index],
                              imageurl:widget.Categoryurl)
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
                            widget.Categoryurl[index]
                        
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
