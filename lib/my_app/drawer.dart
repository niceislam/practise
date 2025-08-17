import 'package:flutter/material.dart';

class DrawerData extends StatefulWidget {
  const DrawerData({super.key});

  @override
  State<DrawerData> createState() => _DrawerDataState();
}

class _DrawerDataState extends State<DrawerData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(
          "Drawer",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            letterSpacing: 2,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      drawerScrimColor: Colors.blue,
      drawer: Drawer(
        width: 370,
        child: Column(
          children: [
            Container(
              height: 280,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyP8GVeuvOSzenK6PjZ4qMnqKYzxJJ1cJxKg&s",
                    ),
                  ),
                  Text(
                    "Shamima sultana",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "shamimasultana@gmail.com",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                spacing: 33,
                children: [
                  buildRow(title: 'Home', icon: Icons.home_outlined),
                  buildRow(title: "Favorite", icon: Icons.favorite_outline),
                  buildRow(title: "Workflow", icon: Icons.work_outline),
                  buildRow(title: "Updates", icon: Icons.refresh),
                  Divider(thickness: 2),
                  buildRow(title: "Plugins", icon: Icons.plumbing),
                  buildRow(title: "Notifications", icon: Icons.notifications),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRow({String? title, IconData? icon}) {
    return Row(
      spacing: 30,
      children: [
        Icon(icon, size: 40, color: Colors.grey),
        Text(
          "${title ?? ""}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
