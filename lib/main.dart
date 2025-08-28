import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app10/practice/textfield.dart';

import 'my_app/chip_practice.dart';
import 'my_app/drawer.dart';
import 'my_app/home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Textfielddata(),
    );
  }
}
