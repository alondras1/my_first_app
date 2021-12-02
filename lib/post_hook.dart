import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_project/post_body.dart';
import 'package:my_first_flutter_project/post_checklist.dart';
import 'main_navigation.dart';
import 'post_checklist.dart';

class PostHookPage extends StatefulWidget {
  const PostHookPage({Key? key}) : super(key: key);

  @override
  _PostHookPageState createState() => _PostHookPageState();
}

class _PostHookPageState extends State<PostHookPage> {
  var hookController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8f0e3),
        body:
        SingleChildScrollView(
          child:
          ConstrainedBox(
            constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
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
                    margin: const EdgeInsets.only(top:10, left: 30, right: 20, bottom: 20),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 85,
                          child: Column(
                            children: [
                              Text("2. THE HOOK",
                              style: GoogleFonts.getFont(
                                'Monoton',
                                fontSize: 26,
                                color: const Color(0xffa0922f),
                                //Color myHexColor = Color(0xff123456);
                              ),
                             ),
                              Container(
                                margin: const EdgeInsets.only(top: 20, bottom: 20),
                                child: Text('Stop your audience from scrolling with an attention-grabbing hook. A great hook will create an EMOTIONAL CONNECTION. '
                                    'Touch on what they need, or ask a question they will want to answer. Here are some examples:',
                                  style: GoogleFonts.getFont(
                                    'Lora',
                                    fontSize: 17,
                                    color: Colors.black, //Color myHexColor = Color(0xff123456);
                                  ),)
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                                  child: Text(' - "Bet you didn\'t know this "'
                                      '\n - "This hack that will change your life "'
                                      '\n - "5 ways to achieve ... "'
                                      '\n - "Common misconceptions about " ',
                                    style: GoogleFonts.getFont(
                                      'Lora',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff5b8579), //Color myHexColor = Color(0xff123456);
                                    ),)),
                              Container(
                                margin: const EdgeInsets.only(top: 40, bottom: 25, left: 5, right: 5),
                                child: TextField(
                                  controller: hookController,
                                  keyboardType: TextInputType.multiline,
                                  minLines: 1,//Normal textInputField will be displayed
                                  maxLines: 3,// when user presses enter it will adapt to it
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'enter your hook here',
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                                  child: Text('* Tip: Keep it short. It\'s only purpose is to get attention to your post. We\'ll get into the details next. *',
                                    style: GoogleFonts.getFont(
                                        'Lora',
                                        fontSize: 15,
                                        color: const Color(0xffB5651D) //Color myHexColor = Color(0xff123456);
                                    ),)),
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
                                  margin : const EdgeInsets.only(left: 10, right: 5, bottom:50),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const PostChecklist()),
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
                                  margin : const EdgeInsets.only(left: 5, right: 10, bottom:50),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PostBodyPage(hook: hookController.text),
                                          ));
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
