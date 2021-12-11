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
        title: const Text('PassWord Reset'),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listenWhen: (p, c) =>
            p.isLoading != c.isLoading ||
            p.error != c.error ||
            p.isAuthenticated != c.isAuthenticated,
        listener: (context, state) {
          // TODO: implement listener
        },
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: email,
                // obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Enter Email",
                  hintText: "Enter Email",
                  fillColor: Colors.greenAccent[10],
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding: EdgeInsets.only(top: 3, left: 3),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
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
    );
  }
}
