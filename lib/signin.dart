import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/main_navigation.dart';
import 'package:my_first_flutter_project/signup.dart';
import 'main_navigation.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8f0e3),
        body: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                children: [
                  Expanded(
                    flex: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 85,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('assets/app_logo3.PNG'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text("Hey, welcome back!",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5b8579),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 40),
                            child: const Text("Please sign in to continue")),
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 10, left: 40, right: 40),
                          child: TextField(
                            controller: emailController,
                            obscureText: false,
                            decoration: const InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'email',
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              //border: OutlineInputBorder(),
                              labelText: 'password',
                            ),
                          ),
                        ),
                        Container(
                          margin : const EdgeInsets.only(top: 50),
                          height: 40,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              FirebaseAuth.instance.signInWithEmailAndPassword(
                                  email: emailController.text, password: passwordController.text)
                              .then((value) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const MainNavPage()),
                                );
                              }).catchError((error){
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xffa0922f), // background
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),),
                            child: const Text('SIGN IN'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("don't have an account?"),
                        const SizedBox(height: 30),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUpPage()),
                          );},
                          child: const Text('Sign up here',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffcb8d5f)
                            ),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

