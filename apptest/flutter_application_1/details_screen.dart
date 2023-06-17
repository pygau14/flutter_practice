import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
      title : Text('Deatils Screen'),
    ),
    body : Center(
      child: ElevatedButton(
        child : Text('Go back'),
        onPressed: (){
          // navigate back to home screen
          Navigator.pop(context);
        },
      ),
    )
    );
  }
}