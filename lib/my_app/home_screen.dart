import 'dart:developer';

import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.arrow_back, color: Colors.white, size: 30),
        centerTitle: true,
        title: Text(
          "Flutter Course",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
            letterSpacing: 3,
          ),
        ),
        actions: [
          SizedBox(
            width: 72,
            child: Row(
              spacing: 5,
              children: [
                Icon(Icons.person, color: Colors.white, size: 30),
                Stack(
                  children: [
                    Icon(Icons.notifications, color: Colors.white, size: 30),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.red,
                        child: Text(
                          "2",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () {},
          child: Text("+", style: TextStyle( fontSize: 35)),
          foregroundColor: Colors.black,
        ),

      ),
    );
  }
}
