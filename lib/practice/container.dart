import 'package:flutter/material.dart';

class NewContainerCard extends StatelessWidget {
  const NewContainerCard({super.key, this.title, this.subtitle, this.icon});
  final String? title;
  final String? subtitle;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Center(child: Icon(Icons.lightbulb, size: 30)),
                  ),
                ),
                Icon(Icons.bookmark, color: Colors.red, size: 30),
              ],
            ),
            Text(
              "${title}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            //SizedBox(height: 5,),
            Text(
              "${subtitle}",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

class CardmainWidget extends StatelessWidget {
  const CardmainWidget({super.key, this.title, this.sidecolor, this.icon});
  final String? title;
  final Color? sidecolor;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black.withOpacity(0.1), width: 4),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.black.withOpacity(0.1),
            child: Icon(Icons.campaign, size: 45, color: Colors.black),
          ),
          Text(
            "Marketing",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
