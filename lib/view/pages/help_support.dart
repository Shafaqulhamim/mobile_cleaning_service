import 'package:flutter/material.dart';

class help extends StatefulWidget {
  @override
  _helpstate createState() => _helpstate();
}

class _helpstate extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32cb95),
        title: const Text('Help & Support'),
      ),
      
body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                //kn picture add krte hoibo? add hoise gap ta fillup kor kn gap? white gap uporer? nicher design error tao thik koris push kor amr pc te kori ami.. ok
                height: 0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/help.png"))),
              ),
             
            ]
          )
      )
      )
    );
  }
}
