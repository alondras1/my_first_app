import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/signup.dart';
import 'signin.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        unselectedWidgetColor: const Color(0xffB5651D),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xfff8f0e3),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Container(
                        margin: const EdgeInsets.only(top: 90, bottom: 20),
                        child: const Image(
                            image: AssetImage('assets/app_logo3.PNG'),
                            //fit: BoxFit.cover, //DIDN'T WORK
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 30,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignInPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffa0922f), // background
                            onPrimary: Colors.white, // foreground
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                          ),
                          ),
                          child: const Text('SIGN IN'),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignUpPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffa0922f), // background
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              //side: BorderSide(color: Colors.red)
                          ),),
                          child: const Text('SIGN UP'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
