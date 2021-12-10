import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';
import 'package:mobile_cleaning_service/customer_dash.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:mobile_cleaning_service/welcome_page.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    BlocListener<AuthBloc, AuthState>(
      listenWhen: (c, p) => c.isAuthenticated != p.isAuthenticated,
      listener: (context, state) {
        Logger().i(state.userData.isCleaner);
        AuthBloc(context.read<IAuthProvider>())
          ..add(const AuthEvent.getUserList());
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CustomerDash(state.userDataList)),
        );
      },
      child: Scaffold(
        body: Welcome(),
      ),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (c, p) => c.isAuthenticated != p.isAuthenticated,
      listener: (context, state) {
        Logger().i(state.userData.isCleaner);
        AuthBloc(context.read<IAuthProvider>())
          ..add(const AuthEvent.getUserList());
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CustomerDash(state.userDataList)),
        );
      },
      child: Scaffold(
        body: Welcome(),
      ),
    );
  }
}
