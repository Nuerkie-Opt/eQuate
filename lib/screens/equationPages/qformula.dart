import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuadraticFormula extends StatefulWidget{
  @override
  QuadraticFormulaState createState() =>QuadraticFormulaState();
}

class QuadraticFormulaState extends State<QuadraticFormula>{

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text('Quadratic Formula',
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
              child: Image.asset('assets/images/qformula.png')
            ),
          ),
          SizedBox(height: 10.0),
          Text(' The quadratic formula is a formula that provides the solution(s) to a quadratic equation. There are other ways of solving a quadratic equation instead of using the quadratic formula, such as factoring (direct factoring, grouping, AC method), completing the square, graphing and others.',
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
            child: Image.asset('assets/images/qfexample.png',
            ),
          )
        ]
      )
    );
  }
}