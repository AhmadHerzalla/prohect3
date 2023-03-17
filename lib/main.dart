import 'package:flutter/material.dart';
import 'mainscreen.dart';

void main() {
  runApp( myapp(), );
}
  // ignore: camel_case_types, use_key_in_widget_constructors
  class myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return state_myapp();
  }

}
// ignore: camel_case_types
class state_myapp extends State<myapp>{
  bool isdarke = false;
  changeTheme(bool value){
    isdarke=value;
    setState(() {
      
    });

  }
  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      theme:isdarke?ThemeData.dark():ThemeData.light() ,
      home: instgramFull(changeTheme,isdarke),));
  }

}





























