import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Pythagoras extends StatefulWidget{
  @override
  PythagorasState createState() =>PythagorasState();
}

class PythagorasState extends State<Pythagoras>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar:AppBar(
        backgroundColor: Color(0xff8D538D),
        title: Text('Pythagoras Theorem',
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
              child: Image.asset('assets/images/pythagoras2.jpeg')
            ),
          ),
          SizedBox(height: 10.0),
          Text('The theorem attributed to Pythagoras is that the square on the hypotenuse of a right-angled triangle is equal in area to the sum of the squares on the other two sides',
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
            child: Image.asset('assets/images/pythagoraseg.png',
            ),
          ),
          FlatButton(
            onPressed:(){ 
              showDialog(
                context: context,
                builder: (BuildContext context){
                  return  AlertDialog(
                    title: Text("Answer"),
                      content: Text("The Answer is 19.5", style: TextStyle(fontSize:20.0),),
                        actions: [FlatButton(onPressed:(){Navigator.pop(context);} , child: Text("Back"),)],
                          elevation: 24.0,
                  );
                },
                barrierDismissible: false,
              );
            }, 
            child: Text('Check Answer')
          ),
        ]
      )
    );
  }
}