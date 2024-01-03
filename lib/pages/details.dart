import 'package:flutter/material.dart';

class Details extends StatelessWidget {
Details( String image,String name ,String position,String description){
this.image = image;
this.name = name;
this.position = position;
this.description = description;
}

String? image;
String? name ;
String? position;
String? description; 



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('details'),),
      body: Stack(
        children: [
          Image.asset(this.image ??'assets/s.jpg',fit: BoxFit.cover),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
              width: 700,
              height: 800,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                )
              ),
             child: Padding(
               padding: const EdgeInsets.only(right: 15,left:15,top: 40),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(this.name ?? '',style: TextStyle(fontFamily: 'inknut',fontSize: 22,height: 1,color: Color(0xFF0F102F))),
                          Icon(Icons.favorite,color: Colors.red,size: 40,)
                        ]),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(this.position ?? ''),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Text('rating',style: TextStyle(fontFamily: 'inknut',fontSize: 20,height: 0.5,color: Color(0xFF0F102F))),
                            Icon(Icons.star,color: Colors.amber[300]),
                            Icon(Icons.star,color: Colors.amber[300]),
                            Icon(Icons.star,color: Colors.amber[300]),
                            Icon(Icons.star,color: Colors.amber[300]),
                            Icon(Icons.star,color: Colors.amber[300]),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text('Desciption',style: TextStyle(fontFamily: 'inknut',fontSize: 20,height: 0.5,color: Color(0xFF0F102F))),
                      ),
                      Padding(
                       padding: const EdgeInsets.only(bottom: 20),
                        child: Text(this.description ?? ''),
                      ),
             
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text('people in your group',style: TextStyle(fontFamily: 'inknut',fontSize: 20,height: 0.5,color: Color(0xFF0F102F))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
                        children: [
                          
                          OutlinedButton(
                            style: ButtonStyle(
                              //backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(255, 209, 209, 209)),
                              minimumSize: MaterialStateProperty.all(Size(30, 40)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the border radius
                              ) ,
                              ) ,
                            ),
                            onPressed: (){},
                            child:Text('1',style: TextStyle(fontFamily: 'inknut',color: Color(0xFF0F102F),fontSize: 30,height: 2))
                          ),
                           OutlinedButton(
                            style: ButtonStyle(
                              //backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(255, 209, 209, 209)),
                              minimumSize: MaterialStateProperty.all(Size(30, 40)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the border radius
                              ) ,
                              ) ,
                            ),
                            onPressed: (){},
                            child:Text('2',style: TextStyle(fontFamily: 'inknut',color: Color(0xFF0F102F),fontSize: 30,height: 2))
                          ),
                           OutlinedButton(
                            style: ButtonStyle(
                              //backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(255, 209, 209, 209)),
                              minimumSize: MaterialStateProperty.all(Size(30, 40)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the border radius
                              ) ,
                              ) ,
                            ),
                            onPressed: (){},
                            child:Text('3',style: TextStyle(fontFamily: 'inknut',color: Color(0xFF0F102F),fontSize: 30,height: 2))
                          ),
                           OutlinedButton(
                            style: ButtonStyle(
                              //backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(255, 209, 209, 209)),
                              minimumSize: MaterialStateProperty.all(Size(30, 40)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the border radius
                              ) ,
                              ) ,
                            ),
                            onPressed: (){},
                            child:Text('4',style: TextStyle(fontFamily: 'inknut',color: Color(0xFF0F102F),fontSize: 30,height: 2))
                          ),
                           OutlinedButton(
                            style: ButtonStyle(
                              //backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(255, 209, 209, 209)),
                              minimumSize: MaterialStateProperty.all(Size(30, 40)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the border radius
                              ) ,
                              ) ,
                            ),
                            onPressed: (){},
                            child:Text('5',style: TextStyle(fontFamily: 'inknut',color: Color(0xFF0F102F),fontSize: 30,height: 2))
                          ),
                          OutlinedButton(
                            style: ButtonStyle(
                              //backgroundColor:  MaterialStateProperty.all<Color>(Color.fromARGB(255, 209, 209, 209)),
                              minimumSize: MaterialStateProperty.all(Size(30, 40)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0), // Adjust the border radius
                              ) ,
                              ) ,
                            ),
                            onPressed: (){},
                            child:Text('6',style: TextStyle(fontFamily: 'inknut',color: Color(0xFF0F102F),fontSize: 30,height: 2))
                          ),
                        ],
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top:10.0),
                         child: ElevatedButton(
                                         style: ButtonStyle(
                                         textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontFamily: 'inknut',fontSize: 30)),
                                         backgroundColor:  MaterialStateProperty.all<Color>(Color(0xFF4E78A8)),
                                         minimumSize: MaterialStateProperty.all(Size(double.infinity, 80)),
                                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                           RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(15), // Adjust the border radius
                                           ),
                                         ),
                                       ),
                                       onPressed: () {
                                         // Button press action
                                       },
                                       child: Text('login' ,style: TextStyle(color:Colors.white ),),
                                     ),
                       ),
                    ],
                  ),
             ),
             ),
          ),
           
        ],
        
      ),
    );
  }
}