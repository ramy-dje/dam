import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.jpg'), // Replace with your image asset path
          fit: BoxFit.cover, // Adjust the fit as needed

        ),
      ),  
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Column(
            children:[ 
              Container(
                margin: EdgeInsets.only(top: 50),
                child: TextButton(
                  onPressed: (){},
                  child: GestureDetector(
                    onTap: (){
                       Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'Sign up',
                      style : TextStyle(
                        fontFamily: 'inknut',
                        color: const Color.fromARGB(255, 1, 35, 63),
                        fontSize: 30
                      ),
                    ),
                  )
                ),
              ),
              Container(
              margin: EdgeInsets.only(top: 110),
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 13,left: 13),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text(
                        'Login',
                         style : TextStyle(
                            fontFamily: 'inknut',
                            color: const Color.fromARGB(255, 1, 35, 63),
                            fontSize: 40
                          ),       
                      ),
                      Container(
                        height: 70,
                        
                        child: TextFormField(
                          style: TextStyle(fontFamily: 'inknut',color: Colors.white),
                          controller: _nameController,
                          decoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 1, 35, 63), // Background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0), // Border radius
                          ),  
                        ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 70,
                        child: TextFormField(
                          style: TextStyle(fontFamily: 'inknut',color: Colors.white),
                          controller: _emailController,
                          decoration: InputDecoration(labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 1, 35, 63), // Background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0), // Border radius
                          ),  
                        ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!value.contains('@')) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontFamily: 'inknut',fontSize: 30)),
                        backgroundColor:  MaterialStateProperty.all<Color>(Color(0xFF4E78A8)),
                        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Adjust the border radius
                          ),
                        ),
                      ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // Form is valid, handle the submission
                            // For example, you can send the data to your server
                            print('Name: ${_nameController.text}');
                            print('Email: ${_emailController.text}');
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ),
            )],
          ),
      ),
    );
  }
}