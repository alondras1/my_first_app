import 'package:flutter/material.dart';
import 'main_navigation.dart';

class MyHashtagsPage extends StatefulWidget {
  const MyHashtagsPage({Key? key}) : super(key: key);

  @override
  _MyHashtagsPageState createState() => _MyHashtagsPageState();
}

class _MyHashtagsPageState extends State<MyHashtagsPage> {

  var hashtagList = [
    {'hashtag1': '#one'},
    {'hashtag2': '#two'},
    {'hashtag3': '#three'},
    {'hashtag4': '#four'},
    {'hashtag5': '#five'},
    {'hashtag6': '#six'},
    {'hashtag7': '#seven'},
    {'hashtag8': '#eight'},
    {'hashtag9': '#nine'},
    {'hashtag10': '#ten'},
  ];

  final List<String> entries = <String>['hashtag1', 'hashtag2', 'hashtag3'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff8f0e3),
      body: Column(
        children:[
          Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 15,
                  child: IconButton(
                    color: const Color(0xff5b8579),
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/app_logo.PNG'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex:92,
            child:
              Text('display hashtags here')
            // ListView.builder(
            //     itemCount: hashtagList.length, //how many do you want to show
            //     itemBuilder: (BuildContext context, int index) {
            //       return ListTile(
            //         onTap: (){
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => MyHashtagsDetailsPage(hashtagList[index])),
            //           );
            //         },
            //         title: Container(
            //             height: 50,
            //             margin: const EdgeInsets.only(top:5, bottom: 5, left: 20, right: 20),
            //             child: Row(
            //               children:  [
            //                 Container(
            //                   margin : const EdgeInsets.only(right: 20),
            //                   child: CircleAvatar(
            //                     backgroundImage: NetworkImage('${hashtagList[index]['hashtag1']}'),
            //                   ),
            //                 ),
            //                 Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start, //moves everything to left
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Text(
            //                       '${friendList[index]['name']}',
            //                       style: const TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                     Text('${friendList[index]['phone']}'),
            //                   ],
            //                 ),
            //                 const Spacer(),
            //                 Text('${hashtagList[index]['type']}'),
            //               ],
            //             )
            //         ),
            //       );
            //     }
            // )
            ),
      ])
    );
  }
}
