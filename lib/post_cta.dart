import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_project/post_body.dart';
import 'package:my_first_flutter_project/post_hashtags.dart';
import 'main_navigation.dart';
import 'post_hashtags.dart';

class PostCTAPage extends StatefulWidget {
  final String hook;
  final String body;

  const PostCTAPage({
    Key? key,
    required this.hook,
    required this.body
  }) : super(key: key);

  @override
  _PostCTAPageState createState() => _PostCTAPageState();
}

class _PostCTAPageState extends State<PostCTAPage> {
  var ctaController = TextEditingController();

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
                    margin: const EdgeInsets.only(top:15, left: 30, right: 20, bottom: 20),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 80,
                          child: Column(
                            children: [
                              Text("4. CALL TO ACTION",
                                style: GoogleFonts.getFont(
                                  'Monoton',
                                  fontSize: 25,
                                  color: const Color(0xffa0922f), //Color myHexColor = Color(0xff123456);
                                ),),
                              Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Text('So, you got their attention and they read the valuable information you shared. Now what? It\'s time to prompt '
                                      'action from your audience and make them feel important by having them take action. '
                                      'Here are some ideas: ',
                                    style: GoogleFonts.getFont(
                                      'Lora',
                                      fontSize: 17,
                                      color: Colors.black, //Color myHexColor = Color(0xff123456);
                                    ),)),
                              Container(
                                  margin: const EdgeInsets.only(top: 25, bottom: 0, left: 10, right: 10),
                                  child: Text(' - share your thoughts by commenting \n    below'
                                      '\n - checkout my stories for a sneak peek \n    of ...'
                                      '\n - like this post if you found it helpful'
                                      '\n - save this post to refer to later',
                                    style: GoogleFonts.getFont(
                                      'Lora',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff5b8579), //Color myHexColor = Color(0xff123456);
                                    ),)),
                              Container(
                                margin: const EdgeInsets.only(top: 40, bottom: 15, left: 5, right: 5),
                                child: TextField(
                                  controller: ctaController,
                                  keyboardType: TextInputType.multiline,
                                  minLines: 1,//Normal textInputField will be displayed
                                  maxLines: 3,// when user presses enter it will adapt to it
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'enter your call to action here',
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 12, left: 10, right: 10),
                                  child: Text('* Tip: Encourage your audience to engage with your post beyond a like *',
                                    style: GoogleFonts.getFont(
                                      'Lora',
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold,
                                      color: const Color(0xffB5651D), //Color myHexColor = Color(0xff123456);
                                    ),)),
                            ],),
                        ),
                        Expanded(
                          flex: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 50,
                                child: Container(
                                  margin : const EdgeInsets.only(left: 10, right: 5, bottom:50),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PostBodyPage(hook: widget.hook),
                                      ));
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
                                  margin : const EdgeInsets.only(left: 5, right: 10, bottom:50),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  PostHashtagsPage(hook: widget.hook, body: widget.body, cta: ctaController.text)),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xffa0922f), // background
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),),
                                    child: const Text('Next Step'),
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
