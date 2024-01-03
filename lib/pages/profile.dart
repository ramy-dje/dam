import 'package:dam/components/navbar.dart';
import 'package:dam/constants.dart';
import 'package:flutter/material.dart';
import 'package:dam/components/categoriesRow.dart';

class Profile extends StatelessWidget {
const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Stack(
          children:[ Column(
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
              child: Text('History',style: TextStyle(fontFamily: 'inknut',fontSize: 30,height: 0.5,color: Color(0xFF0F102F))),
            ),
            CategoriesRow(row1),
            CategoriesRow(row1),
           
          ],
          ),
          Navbar()
        ]),
      ),
    );
  }
}