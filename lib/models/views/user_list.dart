import 'package:flutter/material.dart';
import 'package:flutter_crud/models/components/user_title.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:provider/provider.dart';


class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuários 2'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctc, i) => UserTile(users.byIndex(i)),
        ));
  }
}
