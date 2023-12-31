// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'user_model.dart';
import 'database_helper.dart';

class UserDatabaseHelper {
  static String tableName = 'User';

  static Future<void> createUser(UserModel user) async {
    var database = await DatabaseHelper.instance.database;
    await database!.insert(tableName, user.toMap());
  }

  static Future<List<UserModel>> getUsers() async {
    var database = await DatabaseHelper.instance.database;
    List<Map> list = await database!.rawQuery('SELECT * FROM $tableName');

    List<UserModel> users = [];

    for (var element in list) {
      var user = UserModel.fromMap(element);
      users.add(user);
    }
    await Future.delayed(const Duration(seconds: 2));
    return users;
  }

  static Future<void> updateUser(UserModel user) async {
    var database = await DatabaseHelper.instance.database;
    await database!.update(
      tableName,
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  static Future<void> deleteUser(int id) async {
    var database = await DatabaseHelper.instance.database;
    await database!.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}

Future userDatabaseHelper() async {
  // Add your function code here!
}
