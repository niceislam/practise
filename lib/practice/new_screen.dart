import 'package:flutter/material.dart';

class MorAppScreen extends StatefulWidget {
  const MorAppScreen({super.key});

  @override
  State<MorAppScreen> createState() => _MorAppScreenState();
}

class _MorAppScreenState extends State<MorAppScreen> {
  bool iconOn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Mor App",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildContainer(),
                _buildContainer(),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildContainer(),
                _buildContainer(),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildContainer(),
                _buildContainer(),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildContainer() {
    return Container(
      height: 130,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 2),
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
                InkWell(
                  onTap: () {
                    setState(() {
                      iconOn = !iconOn;
                    });
                  },
                  child:
                      iconOn == true
                          ? Icon(Icons.bookmark, color: Colors.red, size: 30)
                          : Icon(
                            Icons.bookmark_outline,
                            size: 30,
                            color: Colors.red,
                          ),
                ),
              ],
            ),
            Text(
              "PR Manager",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            //SizedBox(height: 5,),
            Text(
              "Lorem & co.",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
