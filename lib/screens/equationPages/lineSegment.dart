import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LineSegment extends StatefulWidget{
  @override
  LineSegmentState createState() =>LineSegmentState();
}

class LineSegmentState extends State<LineSegment>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text('Length of a Line',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w800,
            fontSize: 20.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.cancel,
              color: Colors.white,
            ),
               onPressed: ()=> SystemNavigator.pop(),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0),
          Container(
            constraints: BoxConstraints.expand(height: 200),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/line.png')
            ),
          ),
          SizedBox(height: 10.0),
          Text('Distance between two points P(x1,y1) and Q(x2,y2) is given by: d(P, Q) = √ (x2 − x1)2 + (y2 − y1)2 {Distance formula} 2. Distance of a point P(x, y) from the origin is given by d(0,P) = √ x2 + y2.',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text('Example',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 30.0,
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/line1.png',
            ),
          )
        ]
      )
    );
  }
}