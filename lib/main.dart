import 'package:flutter/material.dart';
import 'home_page.dart';


void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget{
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Calculator App',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.amber[300],
      ),
      home: const HomePage(),
    );
  }
}