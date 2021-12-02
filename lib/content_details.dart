import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/content2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_navigation.dart';

class ContentDetailsPage extends StatefulWidget {
  //const ContentDetailsPage({Key? key}) : super(key: key);
  var contentDetails;

  ContentDetailsPage(this.contentDetails);

  @override
  _ContentDetailsPageState createState() => _ContentDetailsPageState();
}

class _ContentDetailsPageState extends State<ContentDetailsPage> {

  //int max = 10;
  //int randomNumber = Random().nextInt(max) + 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8f0e3),
        body:
        Column(
        children: [
        Expanded(
        flex: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 15,
              child: IconButton(
                color: const Color(0xffa0922f),
                icon: const Icon(Icons.home),
                tooltip: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainNavPage()),
                  );
                },
              ),
            ),
            Expanded(
              flex: 85,
              child: Container(
                margin: const EdgeInsets.only(right: 70),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/app_logo7.PNG'),
                  ),
                ),
              ),
            ),
          ],
         ),
        ),
          Expanded(
            flex: 92,
            child: Center(
              child:
              Column( children: [
                Container(
                  margin: const EdgeInsets.only(top:50),
                  child:
                  Text('${widget.contentDetails['title']}',
                    style: GoogleFonts.getFont(
                      'Monoton',
                      fontSize: 35,
                      //fontWeight: FontWeight.bold,
                      color: const Color(0xffa0922f),
                    ),),
                ),
                Expanded(
                  flex:80,
                  child: Container(
                      margin: const EdgeInsets.only(top:15),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('${widget.contentDetails['imageURL']}'),
                      ),
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
                          margin : const EdgeInsets.only(left: 45, right: 45, bottom:50),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ContentMainNav2()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xffa0922f), // background
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),),
                            child: const Text('More Ideas'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
                ),
            ),
          )
      ]),
      ),
    );
  }
}
