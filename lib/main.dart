import 'package:contacts/widgets/user_items.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyContacts());
}

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map> userslist = [
   {
      "id":"user1",
      "username": "Abbos Mustafoyev",
      "imageURL": "assets/alex.jpg",
      "phonenumber": "(998)91-308-40-01",
    },
    {
      "id": "user2",
      "username": " Mirjalol",
      "imageURL": "assets/mirja.jpg",
      "phonenumber": "(998)99-376-45-07",
    },
    {
      "id": "user3",
      "username": "Azizjon Akam",
      "imageURL": "assets/akam.jpg",
      "phonenumber": "(998)95-045-01-77",
    },
    {
      "id": "user4",
      "username": "Dilshod Akam",
      "imageURL": "assets/dAkam.jpg",
      "phonenumber": "(82)10-8210-3332",
    },
    {
      "id": "user5",
      "username": "Asad",
      "imageURL": "assets/asad.jpg",
      "phonenumber": "(998)91-252-22-70",
    },
    {
      "id": "user6",
      "username": "Kamron ukew",
      "imageURL": "assets/colys.jpg",
      "phonenumber": "(998)99-045-01-21",
    },
    {
      "id": "user7",
      "username": "Jamshid do'st",
      "imageURL": "assets/jamshid.jpg",
      "phonenumber": "(81)80-8542-1431",
    }, 
    {
      "id": "user8",
      "username": "Shaxzod jo'ram",
      "imageURL": "assets/shaxa.jpg",
      "phonenumber": "998-90-017-66-07",
    }
  ];
  @override
  Widget build(BuildContext context) {
   for (var user in userslist){
    
   }
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 255, 255, 255),
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
            Expanded(
              child: ListView(
                children: userslist
                    .map(
                      (user) => UsersItems(
                        id: user["id"],
                        username: user["username"],
                        imageURL: user["imageURL"],
                        phonenumber: user["phonenumber"],
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
