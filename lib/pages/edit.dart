import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dam/components/navbar.dart';

class Edit extends StatefulWidget {
  const Edit({ Key? key }) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/edit.jpg'), // Replace with your image asset path
          fit: BoxFit.cover, // Adjust the fit as needed

        ),
      ),  
      child: BackdropFilter(
         filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0), // Adjust the sigma values for the blur intensity
        child: Padding(
          padding: const EdgeInsets.only(left:16.0,right:16.0,top:60),
          child: Form(
            key: _formKey,
            child: Stack(
              children: [Column(
                children: [
                  Text(
                    'Edit',
                    style:TextStyle(
                      fontFamily: 'inknut',
                      fontSize: 50,
                      color: Color(0xFF0F102F)
                    )),
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      style: TextStyle(fontFamily: 'inknut',color: Colors.white),
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF0F102F), // Background color
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
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF0F102F), // Background color
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
                      style: TextStyle(fontFamily: 'inknut',color: Colors.white),
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF0F102F), // Background color
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
            
                      textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontFamily: 'inknut',fontSize: 30,color:Colors.white)),
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
              Navbar()
            ]),
          ),
        ),
      ),
    );
    }
}
