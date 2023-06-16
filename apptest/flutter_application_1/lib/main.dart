import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  final List<Map<String , dynamic>> maps = [
    {'name' : 'Item 1' ,'price' : 10 },
    {'name' : 'Item 2', 'price' : 15},
     {'name' : 'Item 3' ,'price' : 1000 },
    {'name' : 'Item 4', 'price' : 1500},
     {'name' : 'Item 5' ,'price' : 30 },
    {'name' : 'Item 6', 'price' : 25},
  ];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        appBar : AppBar(
          title : Text('Maps Grid View'),
        ),
        body : GridView.builder(
          itemCount: maps.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1, // ratio of height to the width- if value < 1 narrower , if value > 1 wider.
          ),
          itemBuilder: (BuildContext context , int index){
            return GridTile(
              child : Container(
                color: Colors.blue,
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(maps[index]['name'],
                  style : TextStyle(fontSize : 20 , color : Colors.white)),

                  Text('Price : \$${maps[index]['price']}',
                  style : TextStyle(fontSize: 16 , color : Colors.white)),
                  
                ],)
              )
            );
          }

        )
      )
    );
  }
}