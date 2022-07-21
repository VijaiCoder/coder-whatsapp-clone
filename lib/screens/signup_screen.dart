import 'package:clone_app/services/firebase_auth.dart';
import 'package:clone_app/utils/colors.dart';
import 'package:clone_app/widgets/custom_button.dart';
import 'package:clone_app/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void signUp() async {
    FirebaseAuthMethods(FirebaseAuth.instance).signUpUser(
        context: context,
        email: emailController.text,
        password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: transparent),
      body: Container(
        decoration: const BoxDecoration(color: backgroundclr),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Center(
                child: Text(
              'SignUpScreen',
              style: TextStyle(color: textclr, fontSize: 30),
            )),
            CustomTextField(
                controller: emailController, text: 'Enter your Email'),
            CustomTextField(
                controller: passwordController, text: 'Create your password'),
            CustomButton(text: 'Next', ontap: signUp),
          ],
        ),
      ),
    );
  }
}
