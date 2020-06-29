import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Piechart extends StatefulWidget{
  @override
  PiechartState createState() =>PiechartState();
}

class PiechartState extends State<Piechart>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar:AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text('Pie Charts',
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
            constraints: BoxConstraints.expand(height: 150),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
              child:Text(
                'Finding the angles for each segment',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            constraints: BoxConstraints.expand(height: 150),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
              child:Text(
                'The formula used is (Frequency of Category/Total Category) x 360 degrees',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}