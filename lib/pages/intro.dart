import 'dart:ui';

import 'package:flutter/material.dart';


class Intro extends StatelessWidget {
const Intro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/intro.jpg'), // Replace with your image asset path
          fit: BoxFit.cover, // Adjust the fit as needed
          alignment: Alignment.topCenter

        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('welcome to dz nomade',style: TextStyle(color: Colors.white , fontFamily: 'inknut',fontSize: 27)),
            Text('your digital touristiq guide in algeria',style: TextStyle(color: Colors.white , fontFamily: 'inknut',fontSize: 15)),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                color: Colors.white, // Set the border color
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(60)
              ),
              child: ElevatedButton(
                 style: ButtonStyle(   
                  backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(90, 255, 255, 255)),
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0), // Adjust the border radius
                    ),
                  ),
                ),
                onPressed: (){
                   Navigator.pushNamed(context, '/signup');
                }, 
                child: Text('get started',style: TextStyle(color: Colors.white , fontFamily: 'inknut',fontSize: 30))
              ),
            )
          ],
        ),
      ),
    ) ; 
  }
}