import 'dart:developer';

import 'package:flutter/material.dart';

class Textfielddata extends StatefulWidget {
  const Textfielddata({super.key});

  @override
  State<Textfielddata> createState() => _TextfielddataState();
}

class _TextfielddataState extends State<Textfielddata> {
  TextEditingController onchangedController = TextEditingController();
  bool obsecureText = true;
  final filledText = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Textfield",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: filledText,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                obscureText: obsecureText,
                clipBehavior: Clip.hardEdge,
                mouseCursor: MouseCursor.uncontrolled,
                controller: onchangedController,
                //keyboardType: TextInputType.phone,
                cursorHeight: 20,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "Mail or phone",
                  labelStyle: TextStyle(color: Colors.yellow, fontSize: 20),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        obsecureText = !obsecureText;
                      });
                    },
                    child:
                        obsecureText == false
                            ? Icon(Icons.visibility, color: Colors.white)
                            : Icon(Icons.visibility_off, color: Colors.white),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: (value) {
                  if (value == null || value == "") {
                    return "field can't empty";
                  } else if (!value.contains("@") || !value.contains(".")) {
                    return "wrong mail";
                  }
                },
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (filledText.currentState!.validate()) {
                    return;
                  }
                },
                child: Text("login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
