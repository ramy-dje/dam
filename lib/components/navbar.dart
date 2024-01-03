import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
const Navbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Positioned(
            bottom: 0,
            child: Container(
                width:330 ,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFF4E78A8),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: Container(
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                       onTap: (){
                        Navigator.pushNamed(context, '/welcome');
                      },
                      child: Container(
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                       onTap: (){
                        Navigator.pushNamed(context, '/edit');
                      },
                      child: Container(
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
            )
          );
  }
}