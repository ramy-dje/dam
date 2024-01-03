import 'package:dam/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:dam/constants.dart';


class CategoriesRow extends StatelessWidget {
  CategoriesRow(Destinations r){
  this.row = r ;
  }
  Destinations? row;
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(row?.desName ?? '',style: TextStyle(fontFamily: 'inknut',fontSize: 20,color: Color(0xFF0F102F),)),
        SizedBox(
          height: 150,
          child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: row?.list?.length,
          itemBuilder: (context, index) {
          Destination? destination = row!.list?.elementAt(index); 
          return  GestureDetector(
            child: Container(
              height: 200,
              width: 200,
              child:  Image.asset(destination?.image ?? '' ,fit: BoxFit.cover, ),
              padding: EdgeInsets.only(left: 15),
            ),
            onTap: (){
              
              Navigator.push(context,MaterialPageRoute(
                builder: (context) => Details(destination?.image ?? '',destination?.name ?? '',destination?.position ?? '',destination?.description ?? '',)));
            },
          );
        }),
      )],
    );
  }
}

