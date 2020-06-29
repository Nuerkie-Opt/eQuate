import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CentralTend extends StatefulWidget{
  @override
  CentralTendState createState() =>CentralTendState();
}

class CentralTendState extends State<CentralTend>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text('Measures of Central Tendency',
          textAlign: TextAlign.left,
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
            constraints: BoxConstraints.expand(height: 80),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
                child: Text(
                'Mean: ',
                textAlign: TextAlign.center,
                 style: TextStyle(
                  fontFamily:'OpenSans',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height:10.0),
          Container(
            child: Text(
              'The mean is the arithmetic average. Calculating the mean is very simple. You just add up all of the values and divide by the number of observations in your dataset.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily:'OpenSans',
                fontSize:20.0,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            constraints: BoxConstraints.expand(height: 80),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
                child: Text(
                'Median',
                textAlign: TextAlign.center,
                 style: TextStyle(
                  fontFamily:'OpenSans',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height:10.0),
          Container(
            child: Text(
              'The median is the middle value. It is the value that splits the dataset in half. To find the median, order your data from smallest to largest, and then find the data point that has an equal amount of values above it and below it. The method for locating the median varies slightly depending on whether your dataset has an even or odd number of values.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily:'OpenSans',
                fontSize:20.0,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            constraints: BoxConstraints.expand(height: 80),
            decoration: BoxDecoration(
              color: Color(0xff8D538D),
              borderRadius: BorderRadius.circular(24.0)
              ),
            child: Padding(padding: const EdgeInsets.all(8.0),
                child: Text(
                'Mode',
                textAlign: TextAlign.center,
                 style: TextStyle(
                  fontFamily:'OpenSans',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height:10.0),
          Container(
            child: Text(
              'The mode is the value that occurs the most frequently in your data set. On a bar chart, the mode is the highest bar. If the data have multiple values that are tied for occurring the most frequently, you have a multimodal distribution.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily:'OpenSans',
                fontSize:20.0,
              ),
            ),
          ),
        ]
      )
    );
  }
}