import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';

class ResetPasswordF extends StatefulWidget {
  @override
  _ResetPasswordFstate createState() => _ResetPasswordFstate();
}

class _ResetPasswordFstate extends State<ResetPasswordF> {
  final TextEditingController email = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32cb95),
        title: const Text('Password Reset'),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) =>
            p.isLoading != c.isLoading ||
            p.error != c.error ||
            p.isAuthenticated != c.isAuthenticated,
        listener: (context, state) {
          // TODO: implement listener
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                new Image.asset(
                  'assets/reset 2.png',
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: email,
                  //  middle a ene de dkhi koi
                  //ok ar otp er 2 page a 2 ta image hoibo
                  // time lagbo kichu jinis push korsilam ami dekhmune amr

                  //obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "Enter Email",
                    hintText: "Enter Your Email",
                    fillColor: Colors.greenAccent[10],
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    child: MaterialButton(
                      minWidth: 190,
                      height: 45,
                      onPressed: () {
                        authBloc.add(ResetPassword(email.text));
                        EasyLoading.showSuccess('Request Submitted!');
                      },
                      color: Color(0xff32cb95),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
