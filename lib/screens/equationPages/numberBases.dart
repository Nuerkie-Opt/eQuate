import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberBases extends StatefulWidget{
  @override
  NumberBasesState createState() =>NumberBasesState();
}

class NumberBasesState extends State<NumberBases>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar:AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text('Number Bases',
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
              child: Image.asset('assets/images/numbases1.png')
            ),
          ),
          SizedBox(height: 10.0),
          Text(' A number base is the number of digits or combination of digits that a system of counting uses to represent numbers. A base can be any whole number greater than 0. The most commonly used number system is the decimal system, commonly known as base 10.',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text('Convert to Base 2',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 30.0,
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/convertbase2.png',
            ),
          ),
          SizedBox(height: 10.0),
          Text('Convert to Base 10',
            style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 30.0,
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/convertbase10.png',
            ),
          )
        ]
      )
    );
  }
}