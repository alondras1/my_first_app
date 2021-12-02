import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_project/post_hook.dart';
import 'main_navigation.dart';
import 'post_cta.dart';

class PostBodyPage extends StatefulWidget {
  final String hook;

  const PostBodyPage({
    Key? key,
    required this.hook,
  }) : super(key: key);

  @override
  _PostBodyPageState createState() => _PostBodyPageState();
}

class _PostBodyPageState extends State<PostBodyPage> {

  var detailsController = TextEditingController();

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
                          flex: 85,
                          child: Column(
                            children: [
                              Text("3. THE DETAILS",
                                style: GoogleFonts.getFont(
                                  'Monoton',
                                  fontSize: 25,
                                  color: const Color(0xffa0922f), //Color myHexColor = Color(0xff123456);
                                ),),
                              Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Text('Now that you have their attention, it\'s time to add the chunk of value the reader is looking for after reading your hook. Think of this as the body portion of an essay.'
                                      ' Break up the idea/s into 2-3 sentence paragraphs. ',
                                    style: GoogleFonts.getFont(
                                      'Lora',
                                      fontSize: 17,
                                      color: Colors.black, //Color myHexColor = Color(0xff123456);
                                    ),)),
                              Container(
                                  margin: const EdgeInsets.only(top: 25, bottom: 25),
                                  child: const Text(' - be consistent with emojis used'
                                      '\n - stick to one idea/topic per paragraph'
                                      '\n - keep the language/tone you use consistent'
                                      '\n - create lists or use bullet points',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5b8579), //Color myHexColor = Color(0xff123456);
                                    ),)),
                              Container(
                                margin: const EdgeInsets.only(top: 20, bottom: 35, left: 5, right: 5),
                                child:  TextField(
                                  controller: detailsController,
                                  keyboardType: TextInputType.multiline,
                                  minLines: 1,//Normal textInputField will be displayed
                                  maxLines: 3,// when user presses enter it will adapt to it
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'enter your the details here',
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                                  child: Text('* Tip: Not all posts have to be long and detailed. Just be sure to organize all thoughts and'
                                      'ideas for the more detailed posts. *',
                                    style: GoogleFonts.getFont(
                                      'Lora',
                                      fontSize: 15,
                                      color: const Color(0xffB5651D), //Color myHexColor = Color(0xff123456);
                                    ),
                                  )),
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
                                        MaterialPageRoute(builder: (context) => const PostHookPage()),
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
                              //updatedCaption = widget.caption.toString() + 'hi'; todo: fix
                              Expanded(
                                flex: 50,
                                child: Container(
                                  margin : const EdgeInsets.only(left: 5, right: 10, bottom:50),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PostCTAPage(hook: widget.hook, body: detailsController.text ),
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
