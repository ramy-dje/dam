import 'package:flutter/material.dart';
import 'package:dam/components/categoriesRow.dart';
import 'package:dam/components/navbar.dart';
import 'package:dam/constants.dart';

class Welcome extends StatefulWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(40))
                         ),
                      ),
                      Text('hi,ramy',style: TextStyle(fontFamily: 'inknut',fontSize: 20,height: 0.5,color: Color(0xFF0F102F)),)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Text('Discover',style: TextStyle(fontFamily: 'inknut',fontSize: 30,height: 0.5,color: Color(0xFF0F102F))),
                  ),
                  CategoriesRow(row1),
                  CategoriesRow(discoverTheDeserts),
                  CategoriesRow(enjoyTheNature),
                  CategoriesRow(tryNewDishes),
                   
                 
                ],
                        ),
              ),
            Navbar()
            ],
          ),
        ),
      ),
    );
  }
}