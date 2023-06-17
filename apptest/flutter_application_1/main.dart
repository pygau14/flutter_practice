import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'details_screen.dart';
import 'settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Navigation ',
      theme : ThemeData(
        primarySwatch: Colors.blue,
      ),
      // define the routes for our app
      routes: {
        '/' : (context)=> HomeScreen(),
        '/details' : (context)=>DetailsScreen(),
        '/settings' : (context)=>Settings()
      },
      initialRoute: '/',

    );
  }
}


