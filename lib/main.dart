import 'package:contacts/widgets/user_items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyContacts());
}

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: "OleoScript",
      ),
      debugShowCheckedModeBanner: false,
      home:const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> userslist = [
    {
      "id": "user1",
      "username": "Abbos Mustafoyev",
      "imageURL": "assets/images/alex.jpg",
      "phonenumber": "(998)91-308-40-01",
    },
    {
      "id": "user2",
      "username": " Mirjalol",
      "imageURL": "assets/images/mirja.jpg",
      "phonenumber": "(998)99-376-45-07",
    },
    {
      "id": "user3",
      "username": "Azizjon Akam",
      "imageURL": "assets/images/akam.jpg",
      "phonenumber": "(998)95-045-01-77",
    },
    {
      "id": "user4",
      "username": "Dilshod Akam",
      "imageURL": "assets/images/dAkam.jpg",
      "phonenumber": "(82)10-8210-3332",
    },
    {
      "id": "user5",
      "username": "Asad",
      "imageURL": "assets/images/asad.jpg",
      "phonenumber": "(998)91-252-22-70",
    },
    {
      "id": "user6",
      "username": "Kamron ukew",
      "imageURL": "assets/images/colys.jpg",
      "phonenumber": "(998)99-045-01-21",
    },
    {
      "id": "user7",
      "username": "Jamshid do'st",
      "imageURL": "assets/images/jamshid.jpg",
      "phonenumber": "(81)80-8542-1431",
    },
    {
      "id": "user8",
      "username": "Shaxzod jo'ram",
      "imageURL": "assets/images/shaxa.jpg",
      "phonenumber": "998-90-017-66-07",
    },
    {
      "id": "user9",
      "username": "Asad TUITiskiy",
      "imageURL": "assets/images/asadtuit.jpg",
      "phonenumber": "998-94-841-18-41",
    },
    {
      "id": "user10",
      "username": "Sardor jo'ram",
      "imageURL": "assets/images/sardor.jpg",
      "phonenumber": "998-99-045-50-16",
    },
    {
      "id": "user11",
      "username": "Indicator Tash",
      "imageURL": "assets/images/indicator.jpg",
      "phonenumber": "998-99-825-39-77",
    },
  ];

  void userdelete(String userID) {
    setState(() {
      userslist.removeWhere((user) {
        if (user["id"] == userID) {
          return true;
        } else {
          return false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    for (var user in userslist) {}
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      "My Contacts",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: ListView(
                children: userslist
                    .map(
                      (user) => UsersItems(
                        id: user["id"],
                        username: user["username"],
                        imageURL: user["imageURL"],
                        phonenumber: user["phonenumber"],
                        userdelete: userdelete,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.search),
      ),
    );
  }
}
