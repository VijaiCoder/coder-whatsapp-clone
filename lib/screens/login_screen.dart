import 'package:clone_app/screens/signup_screen.dart';
import 'package:clone_app/services/firebase_auth.dart';
import 'package:clone_app/utils/colors.dart';
import 'package:clone_app/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void loginUser() async {
    await FirebaseAuthMethods(FirebaseAuth.instance).loginuserwithemail(
        context: context,
        email: emailController.text,
        password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: backgroundclr, blurRadius: 2, spreadRadius: 10)
          ],
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://static.wikia.nocookie.net/marveldatabase/images/f/fe/Avengers_Endgame_poster_041_Variant_Textless.jpg/revision/latest?cb=20190629185509')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'LoginScreen',
              style: TextStyle(color: textclr, fontSize: 30),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: emailController,
              text: 'Enter Your Email',
            ),
            CustomTextField(
              controller: passwordController,
              text: 'Enter Your Password',
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Next',
              ontap: loginUser,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Create an Account',
                  style: TextStyle(color: textclr, fontSize: 15),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const SignUpScreen())));
                    },
                    child: const Text(
                      'SignUp?',
                      style: TextStyle(color: blueclr, fontSize: 15),
                    )),
                const SizedBox(height: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
