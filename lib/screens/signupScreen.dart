import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loginScreen.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//setting up database
class User{
  final String name;
  final String email;
  final String password;
  final String conPassword;
  
  User({this.name, this.email, this.password, this.conPassword});

  Map<String, dynamic> toMap(){
    return{
      'name' : name,
      'email': email,
      'password': password,
      'conpassword': conPassword,
    };
  }
}

class SignUpScreen extends StatefulWidget{
  @override
  SignUpScreenState createState() => SignUpScreenState();
  
}
class SignUpScreenState extends State<SignUpScreen>{
   Future navigateToSubpage(context) async{
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
 
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController conpasswordcontroller = new TextEditingController();

Future<void>createDB() async{
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'user_database.db');

final Future<Database> database = openDatabase(path, version: 1,
  onCreate: (db, version) async {
    return db.execute(
      "CREATE TABLE user(name TEXT, email TEXT PRIMARY KEY, password TEXT, conpassword TEXT)"
    );
  },
 );

  Future<void> insertUser(User user) async{
    final Database db = await database;
    await db.insert(
      'user',
    user.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
    final uSer = User(
      name: namecontroller.text,
      email: emailcontroller.text,
      password: passwordcontroller.text,
      conPassword: conpasswordcontroller.text,
    );
    await insertUser(uSer);
}

  String validateName(String value){
    if (value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }
  String validateEmail(String value){
    if (value.isEmpty) {
      return 'Please enter a valid email address';
    }
    if (!value.contains('@')) {
      return 'Email is invalid, must contain @';
    }
    if (!value.contains('.')) {
      return 'Email is invalid, must contain .';
    }
    return null;
  }
  String validatePassword(String value){
    if(value .isEmpty){ 
      return 'Please enter password';
    }
    return null;
  }
  String validateConPassword(String value){
    if(value != passwordcontroller.text){ 
      return 'Passwords dont match';
    }
    return null;
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
            children: <Widget>[
               Container(
                 constraints: BoxConstraints.expand(height: 1000),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffC8A2C8),
                        Color(0xffB785B7),
                        Color(0xffA668A6),
                        Color(0xff8D538D),
                      ],
                      stops: [0.1, 0.4, 0.7, 0.9],
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints.expand(height: 1000),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Name',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xffA668A6),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                height: 60.0,
                child: TextFormField(
                  controller: namecontroller,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    errorText: validateName(namecontroller.text),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'OpenSans'
                    )
                  )
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Email',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color(0xffA668A6),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                height: 60.0,
                child: TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    errorText: validateEmail(emailcontroller.text),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.white54,
                      fontFamily: 'OpenSans'
                    )
                  )
                ),
              ),
              SizedBox(height: 30.0),
                      Text(
                        'Password',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Color(0xffA668A6),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        height: 60.0,
                        child: TextFormField(
                          controller: passwordcontroller,
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                          ),
                          decoration: InputDecoration(
                            errorText: validatePassword(passwordcontroller.text),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: 'Enter Your Password',
                            hintStyle: TextStyle(
                              color: Colors.white54,
                              fontFamily: 'OpenSans'
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        'Confirm Password',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Color(0xffA668A6),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        height: 60.0,
                        child: TextFormField(
                          controller: conpasswordcontroller,
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                          ),
                          decoration: InputDecoration(
                            errorText: validateConPassword(conpasswordcontroller.text),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14.0),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: 'Re-Enter Your Password',
                            hintStyle: TextStyle(
                              color: Colors.white54,
                              fontFamily: 'OpenSans'
                            ),
                          ),
                        ),
                      ),
                       Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed:() {
                            validateName(namecontroller.text); 
                            validateEmail(emailcontroller.text); 
                            validatePassword(passwordcontroller.text); 
                            validateConPassword(conpasswordcontroller.text);
                            showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return  AlertDialog(
                                  title: Text("Sign Up"),
                                  content: Text("Sign Up Successful!", style: TextStyle(fontSize:30.0),),
                                  actions: [FlatButton(onPressed:(){navigateToSubpage(context);} , child: Text("Log In"),)],
                                  elevation: 24.0,
                                );
                              },
                              barrierDismissible: false,
                            );
                          },
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Colors.white,
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                              color: Color(0xffA668A6),
                              letterSpacing: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateToSubpage(context);
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: 'Log In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
            ],
          ), 
        ),
        ),
        ]
      ),
    );
  }
}