import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    this.name,
    this.phone,
    this.address,
    this.image,
  });
  final String? name;
  final String? phone;
  final String? address;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent.withAlpha(100),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  "${image == "" ? "assets/image/NotFound.jpg" : image}",
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${name == "" ? "Not Found" : name}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${phone == "" ? "" : phone}",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                Text(
                  "${address == "" ? "" : address}",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
