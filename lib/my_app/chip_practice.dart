import 'package:flutter/material.dart';

class ChipPractice extends StatefulWidget {
  const ChipPractice({super.key});

  @override
  State<ChipPractice> createState() => _ChipPracticeState();
}

class _ChipPracticeState extends State<ChipPractice> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Chip",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chip(
              iconTheme: IconThemeData(color: Colors.blue),
              backgroundColor: Colors.grey.shade200,
              avatar: Icon(Icons.person),
              side: BorderSide(color: Colors.blue, width: 3),
              label: Text("profile"),
              labelStyle: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.blue,
                  checkColor: Colors.white,
                  side: BorderSide(color: Colors.blue, width: 2),
                  value: status,
                  onChanged: (b) {
                    status = b!;
                    setState(() {});
                  },
                ),
                Text("data"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
