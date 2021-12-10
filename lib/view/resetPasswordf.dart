import 'package:flutter/material.dart';

class myAddress extends StatefulWidget {
  @override
  _addressstate createState() => _addressstate();
}

class _addressstate extends State<myAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32cb95),
        title: const Text('PassWord Reset'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: null,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                labelText: "Current Password",
                hintText: "Enter Your Password here",
                fillColor: Colors.greenAccent[10],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: null,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                labelText: "New Password",
                hintText: "Enter Your New Password here",
                fillColor: Colors.greenAccent[10],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
