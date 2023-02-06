import 'package:flutter/material.dart';

class UsersItems extends StatelessWidget {
  final String id;
  final String username;
  final String imageURL;
  final String phonenumber;
  final Function userdelete;
  const UsersItems({
    super.key,
    required this.id,
    required this.username,
    required this.imageURL,
    required this.phonenumber,
    required this.userdelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 33,
          backgroundImage: AssetImage(
            (imageURL),
          ),
        ),
        title: Text(username),
        subtitle: Text(phonenumber),
        trailing:  IconButton(
          onPressed:() => userdelete(id),
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
