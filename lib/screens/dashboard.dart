import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'loginScreen.dart';

class Dashboard extends StatefulWidget {
  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  Future navigateToSubpage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  Material myItems(IconData icon, String heading, int color, String routeName) {
    return Material(
      color: Color(0xff8D538D),
      elevation: 14.0,
      shadowColor: Color(0xffD68FB0),
      borderRadius: BorderRadius.circular(24.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
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
                        child: Text(heading,
                            style: TextStyle(
                                color: new Color(color),
                                fontSize: 20.0,
                                fontFamily: 'OpenSans'))),
                    Material(
                      color: new Color(color),
                      borderRadius: BorderRadius.circular(18.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          icon,
                          color: Color(0xff8D538D),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text(
          'Dashboard',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w800,
            fontSize: 30.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              navigateToSubpage(context);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.cancel,
              color: Colors.white,
            ),
            onPressed: () => SystemNavigator.pop(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          //  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical:8.0),
          children: <Widget>[
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: myItems(Icons.iso, "Number Bases", 0xffffffff, 'numbases'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: myItems(Icons.iso, "Length of a line Segment", 0xffffffff,
                  'linesegment'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: myItems(Icons.iso, "Equation of a straight line",
                  0xffffffff, 'straightline'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: myItems(
                  Icons.iso, "Quadratic Formula", 0xffffffff, 'qformula'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: myItems(
                  Icons.iso, "Pythagoras Theorem", 0xffffffff, 'pythagoras'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: myItems(Icons.iso, "Frequency Distribution", 0xffffffff,
                  'gfrequency'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: myItems(Icons.iso, "Piecharts", 0xffffffff, 'piechart'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: myItems(
                  Icons.iso, "Central Tendency", 0xffffffff, 'centraltend'),
            ),
          ],
        ),
      ),
    );
  }
}
