import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_navigation.dart';
import 'checkbox_state.dart';
import 'post_hook.dart';

class PostChecklist extends StatefulWidget {
  const PostChecklist({Key? key}) : super(key: key);

  @override
  _PostChecklistState createState() => _PostChecklistState();
}

class _PostChecklistState extends State<PostChecklist> {

  final postCheckList = [
    CheckBoxState(title: 'Entertain'),
    CheckBoxState(title: 'Educate'),
    CheckBoxState(title: 'Inspire'),
    CheckBoxState(title: 'Sell a Product'),

  ];

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
                    margin: const EdgeInsets.only(top:10, left: 30, right: 20, bottom: 20),
                    child: Column(
                      children:[
                        Expanded(
                          flex: 85,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 40,
                                child: Column(
                                  children: [
                                    Text("1. THE PURPOSE",
                                      style: GoogleFonts.getFont(
                                        'Monoton',
                                        fontSize: 25,
                                        color: const Color(0xffa0922f), //Color myHexColor = Color(0xff123456);
                                      ),),
                                    Container(
                                       margin: const EdgeInsets.only(top: 30),
                                        child:
                                        Text('Avoid posting just to post! All the content you create should serve a purpose.'
                                            'Before posting, ask yourself what you want to achieve with this post.',
                                          style: GoogleFonts.getFont(
                                              'Lora',
                                              fontSize: 17,
                                              color: Colors.black //Color myHexColor = Color(0xff123456);
                                          ),)
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 20),
                                        child: Text('Your goal should fall under at least one of these 4 main categories. Check the ones that apply to your post. ',
                                          style: GoogleFonts.getFont(
                                            'Lora',
                                            fontSize: 17,
                                            color: Colors.black, //Color myHexColor = Color(0xff123456);
                                          ),)),
                                  ],),
                              ),
                              Expanded(
                                flex: 50,
                                 child: Container(
                                    margin: const EdgeInsets.only(top: 10, left: 25),
                                 child:
                                 ListView(
                                   padding: const EdgeInsets.all(15),
                                    children: [
                                  ...postCheckList.map(buildSingleCheckbox).toList(),
                                   ],
                                 )
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
                              Expanded(
                                flex: 50,
                                child: Container(
                                  margin : const EdgeInsets.only(left: 10, right: 5, bottom: 20),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const MainNavPage()),
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
                                  margin : const EdgeInsets.only(left: 5, right: 10,bottom: 20),
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
  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading,
    activeColor: const Color(0xffB5651D),
    value : checkbox.value,
    title: Text(
      checkbox.title,
      style: const TextStyle(
          fontSize: 18,
          color: Color(0xffB5651D),
          fontWeight: FontWeight.bold),
    ),
    onChanged: (value)=>  setState(()=> checkbox.value = value!),
  );

}
