import 'package:flutter/material.dart';

import '../user.dart';

class UserTile extends StatelessWidget {
  final User user;


  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl!.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(
        backgroundImage: NetworkImage(user.avatarUrl.toString()));
    return ListTile(
      leading: avatar,
      title: Text(user.name.toString()),
      subtitle: Text(user.email.toString()),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.orange,
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: (){},
            )
          ]
        ),
      ) ,
    );
  }
}
