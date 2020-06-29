import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class FrequencyDist extends StatefulWidget{
  @override
  FrequencyDistState createState() =>FrequencyDistState();
}

class FrequencyDistState extends State<FrequencyDist>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar:AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text('Frequency Distribution',
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
                child: Text(
                'Class Boundary = (Upper limit of a class + Lower limit of the next class)/2',
                 style: TextStyle(
                  fontFamily:'OpenSans',
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            constraints: BoxConstraints.expand(height: 200),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
                child: Text(
                'Class Width = Difference between two successive lower limits or upper limits',
                 style: TextStyle(
                  fontFamily:'OpenSans',
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            constraints: BoxConstraints.expand(height: 200),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
                child: Text(
                'Class Mark/Midpoint = Add Lower and upper limit of a class and divide by 2 ',
                 style: TextStyle(
                  fontFamily:'OpenSans',
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            constraints: BoxConstraints.expand(height: 200),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
                child: Text(
                'The Range of a distribution is the difference between the largest an the smallest numbers in the raw data.',
                 style: TextStyle(
                  fontFamily:'OpenSans',
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