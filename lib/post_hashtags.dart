import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_project/post_final.dart';
import 'main_navigation.dart';
import 'post_cta.dart';

class PostHashtagsPage extends StatefulWidget {
  final String hook;
  final String body;
  final String cta;

  const PostHashtagsPage({
    Key? key,
    required this.hook,
    required this.body,
    required this.cta,
  }) : super(key: key);

  @override
  _PostHashtagsPageState createState() => _PostHashtagsPageState();
}

class _PostHashtagsPageState extends State<PostHashtagsPage> {
  var hashtagController = TextEditingController();

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
                    margin: const EdgeInsets.only(top:15, left: 30, right: 20),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 85,
                          child: Column(
                            children: [
                              Text("5. THE HASHTAGS",
                                style: GoogleFonts.getFont(
                                  'Monoton',
                                  fontSize: 25,
                                  color: const Color(0xffa0922f), //Color myHexColor = Color(0xff123456);
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: Text('Hashtags boost your chance of being found by other accounts who share similar interests. There is not a right or wrong number of hashtags '
                                      'to use. You want to use only what you need. Keep this in mind when choosing your hashtags: ',
                                    style: GoogleFonts.getFont(
                                      'Lora',
                                      fontSize: 17,
                                      color: Colors.black, //Color myHexColor = Color(0xff123456);
                                    ),)),
                              Container(
                                  margin: const EdgeInsets.only(top: 25, bottom: 25, right: 10),
                                  child: const Text(' - does this hashtag correlate to the post?'
                                      '\n - use hashtags that reflect your niche'
                                      '\n - AVOID only using hashtags with millions \n   of posts'
                                      '\n - create your own hashtag and share it for \n   others to use',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff5b8579), //Color myHexColor = Color(0xff123456);
                                    ),)),
                              Container(
                                margin: const EdgeInsets.only(top: 20, bottom: 25, left: 5, right: 5),
                                child: TextField(
                                  controller: hashtagController,
                                  keyboardType: TextInputType.multiline,
                                  minLines: 1,//Normal textInputField will be displayed
                                  maxLines: 3,// when user presses enter it will adapt to it
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'enter your hashtags here',
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                                  child: Text('* Tip: Sometimes less is more. Don\'t feel pressured into using all 30 hashtags. Only use hashtags '
                                      'related to your post. *',
                                    style: GoogleFonts.getFont(
                                      'Lora',
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold,
                                      color: const Color(0xffB5651D), //Color myHexColor = Color(0xff123456);
                                    ),)),
                            ],),
                        ),
                        Expanded(
                          flex: 15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 30,
                                child: Container(
                                  margin : const EdgeInsets.only(left: 10, right: 5, bottom:50),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PostCTAPage(hook: widget.hook, body: widget.body),
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
                                flex: 30,
                                child: Container(
                                  margin : const EdgeInsets.only(left: 5, right: 10, bottom:50),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PostFinalPage(hook: widget.hook, body: widget.body, cta: widget.cta, hashtags: hashtagController.text)),
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
