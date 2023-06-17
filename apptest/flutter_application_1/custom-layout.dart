import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title : Text('Customer layout'),
        ),
        body : MyWidget()

      )
    );
  }
}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children :[
        Text(
          'Text Widget 1',
          style : TextStyle(fontSize : 20),
        ),
        Container(
          height: 200,
          width : double.infinity, 
          color : Colors.blue,
          child : Center(child: Text('Container widget 2'),)
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 6,
            children : List.generate(6, (index){
              return Container(
                margin : EdgeInsets.all(10),
                color : Colors.green,
                height : 100,
                width: 100,
                child : Center(
                  child : Text(
                    'Items',
                    style : TextStyle(fontSize : 20 , color : Colors.white),
                  )
                )
              );
            })
          ),
        )
      ]
    );
  }
}