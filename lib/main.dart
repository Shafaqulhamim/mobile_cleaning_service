import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mobile_cleaning_service/application/auth/auth_bloc.dart';
import 'package:mobile_cleaning_service/domain/auth/i_auth_provider.dart';
import 'package:mobile_cleaning_service/infrastructure/auth/firebase_auth_provider.dart';
import 'package:mobile_cleaning_service/login.dart';
import 'package:mobile_cleaning_service/signup.dart';
import 'package:mobile_cleaning_service/welcome_page.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
          } else if (snapshot.connectionState == ConnectionState.done) {
            return MultiRepositoryProvider(
              providers: [
                RepositoryProvider<IAuthProvider>(
                  create: (context) =>
                      FirebaseAuthProvider(FirebaseAuth.instance),
                ),
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider<AuthBloc>(
                    create: (context) => AuthBloc(context.read<IAuthProvider>())
                      ..add(const AuthEvent.authCheckRequested()),
                  ),
                ],
                child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Blood 365',
                    builder: EasyLoading.init(),
                    home: BlocListener<AuthBloc, AuthState>(
                      listenWhen: (c, p) =>
                          c.isAuthenticated != p.isAuthenticated,
                      listener: (context, state) {
                        if (state.isAuthenticated) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Welcome()),
                          );
                        }
                      },
                      child: Scaffold(
                        body: Welcome(),
                      ),
                    )),
              ),
            );
          }
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Blood 365',
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                    // value: controller.value,
                    ),
              ),
            ),
          );
        });
  }
}
//hi i am hamim