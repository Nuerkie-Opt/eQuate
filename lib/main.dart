import 'package:flutter/material.dart';
import 'screens/loginScreen.dart';
import 'screens/equationPages/numberBases.dart';
import 'screens/equationPages/lineSegment.dart';
import 'screens/equationPages/straightLine.dart';
import 'screens/equationPages/qformula.dart';
import 'screens/equationPages/pythagoras.dart';
import 'screens/equationPages/gFrequencydist.dart';
import 'screens/equationPages/piechart.dart';
import 'screens/equationPages/centralTend.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eQaute',
      debugShowCheckedModeBanner: false ,
      initialRoute: 'login',
      routes: {
        'login': (context)=> LoginScreen(),
        'numbases': (context)=> NumberBases(),
        'linesegment': (context)=> LineSegment(),
        'straightline': (context)=> StraightLine(),
        'qformula': (context)=> QuadraticFormula(),
        'pythagoras': (context)=> Pythagoras(),
        'gfrequency': (context)=> FrequencyDist(),
        'piechart': (context)=> Piechart(),
        'centraltend': (context)=> CentralTend(),
      },
    );
  }
}
