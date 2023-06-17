//home_screen.dart
import 'package:flutter/material.dart';
import 'details_screen.dart';



class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ) ,
      body:Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            child: Text('go to details'),
            onPressed: (){
              Navigator.pushNamed(context, '/details');
            },),
            ElevatedButton(
              child: Text('Settings'),
              onPressed: (){
                Navigator.pushNamed(context, '/settings');
              },
            )]),)
    );
  }
}
