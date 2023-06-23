import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}
 class _MyAppState extends State<MyApp>{
  List<Map<String,dynamic>> dataList = [];
  bool isloading = false;


  Future<void> fetchData() async{
    setState((){
      isloading = true;
    });
    try{
      final response  = await http.get(Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));
      if(response.statusCode == 200){
        // converting json data to the maps in dart
        final responseData = jsonDecode(response.body);
        final dataListFromApi = responseData['data'] as List;
        setState((){
          dataList = dataListFromApi.cast<Map<String,dynamic>>();
        });
      }else{
        print('Error');
      }
    }catch(error){
      print('Error - catch block');
      print(error);
    }finally{
      setState((){
        isloading = false;
      });
    }
  }
  @override
 Widget build(BuildContext context){
  return MaterialApp(
    home : Scaffold(
      appBar: AppBar(
        title : Text('Employee Data'),
      ),
      body : Column(
        children: [
          ElevatedButton(
            onPressed: fetchData,
            child: Text('Fetch Details'),
          ),
          isloading ? CircularProgressIndicator() : Expanded(
            child : ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context,index){
                final data = dataList[index];
                return ListTile(
                  title : Text(data['employee_name']),
                  subtitle: Text(data['employee_salary'].toString()),
                );
              }
            )
          )
        ],
      )
    )
  );
 }
 }
