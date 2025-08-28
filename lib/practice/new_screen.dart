import 'package:flutter/material.dart';

import 'container.dart';

class MorAppScreen extends StatefulWidget {
  const MorAppScreen({super.key});

  @override
  State<MorAppScreen> createState() => _MorAppScreenState();
}

class _MorAppScreenState extends State<MorAppScreen> {
  List<Map<String, dynamic>> ideaList = [
    {"title": "PR Manager", "subtitle": "Lorem & co"},
    {"title": "HR Assistant", "subtitle": "Ipsum inc"},
    {"title": "Junior Manager", "subtitle": "Lorem & co"},
    {"title": "Happiness CEO", "subtitle": "TechUp"},
    {"title": "Happiness CEO", "subtitle": "TechUp"},
    {"title": "Happiness CEO", "subtitle": "TechUp"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.black, width: 1),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzkuuKTB-WNAEzx_Lp5VZHQmwCEw7wA6yjiQ&s",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Iveta Fork",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 27,
                ),
              ),
              Text(
                "HR Manager . Amsterdam, NL",
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              SizedBox(height: 40),
              Divider(height: 2),
              SizedBox(height: 17),
              Text(
                "My job applications(1)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 75,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Card(
                        color: Colors.black.withAlpha(2),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Center(
                            child: Icon(Icons.add, size: 40, color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "People partner",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text("Happy & co", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      SizedBox(width: 110),
                      Text("1d ago", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Saved offers(18)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.40,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: ideaList.length,
                    itemBuilder: (context, index) {
                      return NewContainerCard(
                        title: ideaList[index]['title'],
                        subtitle: ideaList[index]['subtitle'],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
