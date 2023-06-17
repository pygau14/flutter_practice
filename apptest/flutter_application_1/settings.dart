import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body : Center(
        child: ElevatedButton(
          child : Text('go to home'),
          onPressed: (){
            Navigator.pushNamed(context, '/');
          },
        ) ,)
    );
  }
}