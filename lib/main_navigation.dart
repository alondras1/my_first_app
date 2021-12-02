import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/content2.dart';
import 'package:my_first_flutter_project/post_checklist.dart';
import 'post_checklist.dart';
import 'package:google_fonts/google_fonts.dart';

Color myHexColor = const Color(0xffB5651D);

class MainNavPage extends StatefulWidget {
  const MainNavPage({Key? key}) : super(key: key);

  @override
  _MainNavPageState createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8f0e3),
        body:
        Column(
          children: [
            Expanded(
              flex: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 50,
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
              flex: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 50,
                    child: Container(
                      height: 150,
                      margin : const EdgeInsets.only(left: 50, right: 50),
                      child:
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const PostChecklist()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffB5651D), // background
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),),
                        child: const Text('POST CAPTIONS'),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Expanded(
                    flex: 50,
                    child: Container(
                      height: 150,
                      margin : const EdgeInsets.only(left: 50, right: 50),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ContentMainNav2()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffB5651D), // background
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),),
                        child: const Text('CONTENT IDEAS'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child:
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text("one  post  at  a  time.",
                  style: GoogleFonts.getFont(
                    'Monoton',
                    fontSize: 26,
                    //fontWeight: FontWeight.bold,
                    color: const Color(0xffa0922f), //C38D5F
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
