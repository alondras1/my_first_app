import 'package:flutter/material.dart'; //todo: don't need this page
import 'data.dart';
import 'friend_contact_details.dart';

class PostRoadMapPage extends StatefulWidget {
  const PostRoadMapPage({Key? key}) : super(key: key);

  @override
  _PostRoadMapPageState createState() => _PostRoadMapPageState();
}

class _PostRoadMapPageState extends State<PostRoadMapPage> {

  /*final List<String> entries = <String>[
    'Alice', 'Thomas', 'Carl', 'John', 'Sam', 'Cindy', 'Frank', 'Hugp', 'Alex', 'James'];
  final List<String> phones = <String>[
    '(909)123-4567', '(909)323-4567', '(909)123-4237', '(909)173-4987', '(909)173-4987', '(909)163-4987', '(909)173-4987', '(909)173-4911', '(909)654-4237', '(909)765-4987'];
 */

  //using a dictionary, alternative to using a constructor and another class
  var friendList = [
    {
      'iconImage': 'Junior',
      'title': 'About You',
      'imageURL': 'https://www.pngkey.com/png/detail/303-3032746_1-number-1-icon-green.png',
      'type' : 'MOBILE'
    },
    {
      'name': 'Tracey',
      'phone': '(904)456-4589',
      'imageURL': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQesgOzZSAz72MGG25Th8F0ij0S3fZpqB96ifltAY-hh8wdkoIZzBQun2B27n752aWTI_Q&usqp=CAU',
      'type' : 'WORK'
    },
    {
    'name': 'John',
    'phone': '(909)983-3170',
    'imageURL': 'https://previews.123rf.com/images/gmast3r/gmast3r1710/gmast3r171002485/88771602-avatar-profile-icon-male-faceless-user-on-colorful-round-background-flat-vector-illustration.jpg',
    'type' : 'MOBILE'
    },
  ];


  List<Friend> friends = <Friend>[];

  _PostRoadMapPageState() { //constructor
    Friend f1 = Friend('Alice', '(909)123-4570', 'https://image.pngaaa.com/833/2127833-middle.png', 'MOBILE');
    Friend f2 = Friend('Tracy', '(904)456-4589', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQesgOzZSAz72MGG25Th8F0ij0S3fZpqB96ifltAY-hh8wdkoIZzBQun2B27n752aWTI_Q&usqp=CAU', 'WORK');
    Friend f3 = Friend('John', '(909)983-3170', 'https://previews.123rf.com/images/gmast3r/gmast3r1710/gmast3r171002485/88771602-avatar-profile-icon-male-faceless-user-on-colorful-round-background-flat-vector-illustration.jpg', 'HOME');
    Friend f4 = Friend('Michael', '(909)476-9877', 'https://cdn.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg', 'WORK');
    Friend f5 = Friend('Elizabeth', '(256)476-9877', 'https://cdn.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg', 'iPhone');

    friends = [f1, f2, f3, f4, f5];
  }

  //final List<int> colorCodes = <int>[600, 500, 100];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(
        itemCount: friendList.length, //how many do you want to show
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FriendContactDetailsPage(friendList[index])),
              );
            },
            title: Container(
              height: 50,
              margin: const EdgeInsets.only(top:5, bottom: 5, left: 20, right: 20),
              child: Row(
                children:  [
                  Container(
                    margin : const EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('${friendList[index]['imageURL']}'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, //moves everything to left
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${friendList[index]['name']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('${friendList[index]['phone']}'),
                    ],
                  ),
                  const Spacer(),
                  Text('${friendList[index]['type']}'),
                ],
              )
            ),
          );
        }
    )

    );
  }
}
