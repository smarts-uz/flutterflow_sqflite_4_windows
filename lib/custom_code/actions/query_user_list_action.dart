// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'user_model.dart';
import 'user_database_helper.dart';
import 'database_helper.dart';

Future<List<UserMasterStruct>?> queryUserListAction() async {
  List<UserModel> userList = await UserDatabaseHelper.getUsers();

  List<UserMasterStruct> userMasterList = userList.map((userModel) {
    return createUserMasterStruct(
      id: userModel.id,
      userName: userModel.userName,
      email: userModel.email,
      title: userModel.title,
    );
  }).toList();

  return userMasterList;

  // Add your function code here!
}
