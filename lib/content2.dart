import 'package:flutter/material.dart';
import 'main_navigation.dart';
import 'content_details.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentMainNav2 extends StatefulWidget {
  const ContentMainNav2({Key? key}) : super(key: key);
  @override
  _ContentMainNav2State createState() => _ContentMainNav2State();
}

class _ContentMainNav2State extends State<ContentMainNav2> {

  var contentTopics = [
    {
      'title': 'About You',
      'imageURL': 'assets/about_you3.PNG',
    },
    {
      'title': 'Tips',
      'imageURL': 'assets/tips.PNG',
    },
    {
      'title': 'Your  Product',
      'imageURL': 'assets/your_product.PNG',
    },
    {
      'title': 'Your Workspace',
      'imageURL': 'assets/workspace.PNG',
    },
    {
      'title': 'Inspiration',
      'imageURL': 'assets/inspiration.png',
    },
    {
      'title': 'This or that',
      'imageURL': 'assets/this_or_that.png',
    },
    {
      'title': 'Testimonials',
      'imageURL': 'assets/testimonials.PNG',
    },
  ];


  late FixedExtentScrollController controller;
  @override
  void initState(){
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

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
                    flex: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 20,
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
                    flex:70,
                    child: ListWheelScrollView.useDelegate(
                        itemExtent: 120,
                        controller: controller,
                        physics: const FixedExtentScrollPhysics(),
                        perspective: .004,
                        diameterRatio: 1.5,
                        squeeze: .9,

                        childDelegate: ListWheelChildBuilderDelegate(
                          builder: (context,index){
                            return Container(
                              margin: const EdgeInsets.only(left:45, right: 45),
                              color: const Color(0xffa0922f),

                              alignment: Alignment.center,
                              child: Text(
                                '${contentTopics[index]['title']}',
                                style: GoogleFonts.getFont(
                                  'Monoton',
                                  fontSize: 22,
                                  color: Colors.white,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          },
                          childCount: contentTopics.length,
                        ),
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
                            margin : const EdgeInsets.only(left: 60, right: 60, bottom:50),
                            child:
                              ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xffB5651D), // background
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),),
                              onPressed: () {
                                final currentIndex = controller.selectedItem;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ContentDetailsPage(contentTopics[currentIndex])),
                                );

                              },
                              child: const Text('Details'),
                            ),
                          ),
                          )
                      ],
                    ),
                  )
                ]),
          )
      ),
    );
  }
}
