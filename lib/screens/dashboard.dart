import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard extends StatefulWidget{
  @override
  DashboardState createState() => DashboardState();
}


class DashboardState extends State<Dashboard>{

  Material myItems(IconData icon, String heading, int color){
    return  Material(
      color: Color(0xffF7CAC9),
      elevation: 14.0,
      shadowColor: Color(0xffD68FB0),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Text(heading,
                        style: TextStyle(
                          color: new Color(color),
                          fontSize: 20.0,
                          fontFamily: 'OpenSans'
                        )
                      )
                    ),
                    Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Color(0xffEAE6F0),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xffF7CAC9),
        title: Text('Dashboard',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xffBF3880),
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w800,
            fontSize: 30.0,
          ),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical:8.0),
        children: <Widget>[
          myItems(Icons.graphic_eq, "Junior High Maths",0xffBF3880),
          myItems(Icons.graphic_eq, "Junior High Science",0xffBF3880),
          myItems(Icons.graphic_eq, "Senior High Maths",0xffBF3880),
          myItems(Icons.graphic_eq, "Senior High Science",0xffBF3880),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 240.0),
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 240.0),
        ],
      ),
    );
  }
}