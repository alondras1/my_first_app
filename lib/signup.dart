import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'signin.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState(
  );
}

class _SignUpPageState extends State<SignUpPage> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8f0e3),
        body: 
        SingleChildScrollView(
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
                  flex: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Join the club.",
                          style: TextStyle(color: Color(0xff5b8579),
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),),
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
                        child: TextField(
                          controller: emailController,
                          obscureText: false,
                          decoration: const InputDecoration(
                            //hintText: "example@gmail.com",
                            labelText: 'email',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 40, right: 40),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            //border: OutlineInputBorder(),
                            labelText: 'password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Column(children: [
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: (
                            ) {
                          // 1. get email and password typed
                          // 2. sent to firebase Auth
                          FirebaseAuth.instance.createUserWithEmailAndPassword(
                              email: emailController.text, password: passwordController.text)
                              .then((value){
                                Navigator.pop(context);
                              }).catchError((error){
                              });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffa0922f), // background
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),),
                        child: const Text('SIGN UP'),
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
                      const Text("already have an account?"),
                      const SizedBox(height: 30),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignInPage()),
                          );},
                        child: const Text('Sign in here',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffcb8d5f)
                          ),),
                      ),
                    ],
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
