import 'package:flutter/material.dart';

import 'all_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> contactInfo = [
    {
      "name": "Nice islam",
      "phone": '01859009285',
      "address": "Kalikagoan",
      "image": "assets/image/Nice2.jpg",
    },
    {
      "name": "mayeen bin ahsan",
      "phone": '01859009285',
      "address": "Goreya",
      "image": "assets/image/Nice2.jpg",
    },
    {
      "name": "rabby",
      "phone": '01859009285',
      "address": "nilfamari",
      "image": "",
    },
    {
      "name": "rabby",
      "phone": '01859009285',
      "address": "nilfamari",
      "image": "",
    },
    {
      "name": "rabby",
      "phone": '01859009285',
      "address": "nilfamari",
      "image": "assets/image/Nice2.jpg",
    },
    {
      "name": "rabby",
      "phone": '01859009285',
      "address": "nilfamari",
      "image": "",
    },
    {
      "name": "rabby",
      "phone": '01859009285',
      "address": "nilfamari",
      "image": "",
    },
    {
      "name": "rabby",
      "phone": "01859009285",
      "address": "nilfamari",
      "image": "",
    },
    {
      "name": "rabby",
      "phone": "01859009285",
      "address": "nilfamari",
      "image": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Friends Info",
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
      body: ListView.builder(
        itemCount: contactInfo.length,
        itemBuilder: (context, index) {
          return CardWidget(
            name: "${contactInfo[index]["name"]}",
            phone: "${contactInfo[index]["phone"]}",
            address: "${contactInfo[index]["address"]}",
            image: "${contactInfo[index]["image"]}",
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 30),
            label: 'Study',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, size: 30),
            label: 'Collage',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
