import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StraightLine extends StatefulWidget{
  @override
  StraightLineState createState() =>StraightLineState();
}

class StraightLineState extends State<StraightLine>{
  @override
  Widget build(BuildContext context){
    return Scaffold( appBar:AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text('Equation of a Straight Line',
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
              child: Text('General form for the equation of a line is ax+by+c=0',
              style: TextStyle(
              fontFamily: 'OpenSans',
              color: Colors.white,
              fontSize: 40.0,
              )
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Text('Slope-Intercept form ',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('0 = ax + by + c',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('0 - by = ax + c',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('-by = ax + c',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('Divide through by -b',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('-by/-b = ax/-b + c/-b',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('y = (-a/b)x + -c/b',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('Comparing to y = mx + c',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('slope,m = (-a/b) and y-intercept, c =(-c/b)',
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
           Text('4x - 2y - 5 = 0',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('-2y = -4y + 5',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('Dividing through by -2',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('y = 2x + (-5/2)',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('y = 2x - 5/2',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
           Text('The slope, m = 2 and the y-intercept, c = -5/2',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
        ]
      ));
  }
}