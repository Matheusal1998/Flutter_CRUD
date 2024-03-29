import 'package:flutter/material.dart';
import 'package:flutter_crud/models/data/dummey_user.dart';
import 'package:flutter_crud/models/user.dart';

class Users with ChangeNotifier{
  final Map<String,User> _items = {...DUMMY_USERS};

  List<User> get all{
    return [..._items.values];
  }

  int get count{
    return _items.values.length;
  }
  User byIndex(int i){
    return _items.values.elementAt(i);
  }
}