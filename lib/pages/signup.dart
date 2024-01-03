import 'dart:ui';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
   /*void _signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Retrieve the currently signed-in user
      User? user = FirebaseAuth.instance.currentUser;

      // Update the user's display name
      await user?.updateProfile(displayName: _nameController.text);

      // Navigate to the next screen or perform any other action on successful signup
      // Example:
      Navigator.pushReplacementNamed(context, '/welcome');
    } catch (e) {
      // Handle errors during signup
      print('Error during signup: $e');
    }
  }*/
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/signup.jpg'), // Replace with your image asset path
          fit: BoxFit.cover, // Adjust the fit as needed

        ),
      ),  
      child: BackdropFilter(
         filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0), // Adjust the sigma values for the blur intensity
        child: Padding(
          padding: const EdgeInsets.only(left:16.0,right:16.0,top:80),
          child: Form(
            key: _formKey,
            child: Stack(
              children: [Column(
                children: [
                  Text(
                    'Sign up',
                    style:TextStyle(
                      fontFamily: 'inknut',
                      fontSize: 50,
                      color: Color.fromARGB(255, 197, 197, 197)
                    )),
                  Container(
                    height: 70,
                    child: TextFormField(
                      style: TextStyle(fontFamily: 'inknut'),
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        filled: true,
                        fillColor: Colors.white, // Background color
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
                      style: TextStyle(fontFamily: 'inknut'),
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white, // Background color
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
                  Container(
                    height: 70,
                    child: TextFormField(
                      style: TextStyle(fontFamily: 'inknut'),
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white, // Background color
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0), // Border radius
                        ),    
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
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
                        print('Email: ${_passwordController.text}');
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: -13,
                child: ElevatedButton(
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontFamily: 'inknut',fontSize: 30)),
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.white),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 80)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(80),topRight: Radius.circular(80)), // Adjust the border radius
                      ),
                    ),
                  ),
                  onPressed: () {
                     Navigator.pushNamed(context, '/login');
                  },
                  child: Text('login' ,style: TextStyle(color: Color(0xFF4E78A8)),),
                ),
              ) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}