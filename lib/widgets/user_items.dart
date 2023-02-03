import 'package:flutter/material.dart';

class UsersItems extends StatelessWidget {
  final String id;
  final String username;
  final String imageURL;
  final  String phonenumber;
  const UsersItems({
    super.key,
    required this.id,
    required this.username,
    required this.imageURL,
    required this.phonenumber,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 33,
          backgroundImage: AssetImage(
            (imageURL),
          ),
        ),
        title: Text(username),
        subtitle:  Text(phonenumber),
        trailing: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
