import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_navigation.dart';
import 'post_hashtags.dart';

class PostFinalPage extends StatefulWidget {
  final String hook;
  final String body;
  final String cta;
  final String hashtags;

  const PostFinalPage({
    Key? key,
    required this.hook,
    required this.body,
    required this.cta,
    required this.hashtags}) : super(key: key);

  @override
  _PostFinalPageState createState() => _PostFinalPageState();
}

class _PostFinalPageState extends State<PostFinalPage> {
  _PostFinalPageState();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
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
                  child: Container(
                    margin: const EdgeInsets.only(top:30, left: 30, right: 20),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 85,
                          child: Column(
                            children: [
                              const Expanded(
                                flex: 20,
                                child: Text("Congrats, you just finished creating a caption!",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffa0922f), //Color myHexColor = Color(0xff123456);
                                  ),),
                              ),
                              Expanded(
                                flex: 60,
                                child: Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: Text(widget.hook +'\n\n'+ widget.body + '\n\n' + widget.cta + '\n\n' + widget.hashtags,
                                      style: GoogleFonts.getFont(
                                        'Lora',
                                        fontSize: 16,
                                        color: const Color(0xffB5651D), //Color myHexColor = Color(0xff123456);
                                      ),)),
                              ),
                              Expanded(
                                flex: 20,
                                child: Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: Text('Now you can copy your caption to your clipboard and paste onto Instagram or save it on your '
                                        'favorite planner',
                                      style: GoogleFonts.getFont(
                                        'Lora',
                                        fontSize: 16,
                                        color: const Color(0xffB5651D), //Color myHexColor = Color(0xff123456);
                                      ),)),
                              ),
                            ],),
                        ),
                        Expanded(
                          flex: 15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 50,
                                child: Container(
                                  margin : const EdgeInsets.only(left: 10, right: 5, bottom:30),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PostHashtagsPage(hook: widget.hook, body: widget.body, cta: widget.cta,)),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xffa0922f), // background
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),),
                                    child: const Text('Back'),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 50,
                                child: Container(
                                  margin : const EdgeInsets.only(left: 5, right: 10, bottom:30),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const MainNavPage()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xffa0922f), // background
                                      onPrimary: Colors.white,shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),),
                                    child: const Text('Done'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
