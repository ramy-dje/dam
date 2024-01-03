import 'package:flutter/material.dart';
import 'package:dam/pages/login.dart';
import 'package:dam/pages/signup.dart';
import 'package:dam/pages/details.dart';
import 'package:dam/pages/welcome.dart';
import 'package:dam/pages/edit.dart';
import 'package:dam/pages/intro.dart';
import 'package:dam/pages/profile.dart';
//import 'package:firebase_core/firebase_core.dart';
void main () async  {
  //WidgetsFlutterBinding.ensureInitialized();
 // await Firebase.initializeApp();
  runApp(MaterialApp(home:  Main()));
}

class Main extends StatelessWidget {
const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/welcome',
      routes: {
        '/intro' : (context)=>Intro(),
        '/login' : (context)=>Scaffold(body:Login(),resizeToAvoidBottomInset : false),
        '/signup' : (context)=>Scaffold(body: Signup(),resizeToAvoidBottomInset : false),
        '/edit' : (context)=>Scaffold(body:Edit(),resizeToAvoidBottomInset : false),
        '/welcome' : (context)=>Scaffold(body:Welcome(),resizeToAvoidBottomInset : false),
        '/profile' : (context)=>Scaffold(body:Profile(),resizeToAvoidBottomInset : false),

      },
      //resizeToAvoidBottomInset : false,
      //appBar: AppBar(title: Text('helo')),
      //body: Edit(),
    );
  }
}