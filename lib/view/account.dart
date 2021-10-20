import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Account"),
        leading: Icon(Icons.arrow_back_ios_new),
        backgroundColor: Color.fromRGBO(120, 209, 168, 1),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Row(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Image.png'),
                      width: 90,
                      height: 90,
                    ),
                    // Icon(
                    //   Icons.account_circle_outlined,
                    //   size: 80,
                    //   color: Color.fromRGBO(120, 209, 168, 1),
                    // ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'My Account',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Your Name",
                    labelText: "User Name",
                  ),
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "abc123@mail.com",
                    labelText: "Email",
                    //
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "+88 1234567890",
                    labelText: "Phone",
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              passwordButton(),
              SizedBox(
                height: 20,
              ),
              emailButton(),
              SizedBox(
                height: 20,
              ),
              deleteButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget passwordButton() {
    return GestureDetector(
      onTap: () {
        //TODO:REGISTER HERE
      },
      child: Container(
        height: 45,
        width: 250,
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            "Change Password",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget emailButton() {
    return GestureDetector(
      onTap: () {
        //TODO:REGISTER HERE
      },
      child: Container(
        height: 45,
        width: 250,
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            "Change Email",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget deleteButton() {
    return GestureDetector(
      onTap: () {
        //TODO:REGISTER HERE
      },
      child: Container(
        height: 45,
        width: 250,
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.redAccent,
        ),
        child: Center(
          child: Text(
            "Delete Account",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
