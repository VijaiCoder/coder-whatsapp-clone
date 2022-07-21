// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:clone_app/screens/home_screen.dart';
import 'package:clone_app/widgets/snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseAuthMethods {
  late final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);
  Future<void> signUpUser(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      await sendEmailVerification(context);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: ((context) => const HomeScreen())));
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      print('It\'s Perfect');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  Future<void> loginuserwithemail(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if (_auth.currentUser!.emailVerified) {
        await sendEmailVerification(context);
      }
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }
}
