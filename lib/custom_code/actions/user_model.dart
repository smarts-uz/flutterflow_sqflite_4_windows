// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:xml/xml.dart';

class UserModel {
  int? id;
  String? userName;
  String? email;
  String? title;

  UserModel({this.id, this.userName, this.email, this.title});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["userName"] = userName;
    map["email"] = email;
    map["title"] = title;
    return map;
  }

  UserModel.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    userName = map['userName'];
    email = map['email'];
    title = map['title'];
  }

  String toXML() {
    final builder = XmlBuilder();
    builder.processing('xml', 'version="1.0"');
    builder.element('User', nest: () {
      builder.element('id', nest: id?.toString());
      builder.element('userName', nest: userName);
      builder.element('email', nest: email);
      builder.element('title', nest: title);
    });
    final xmlDoc = builder.buildDocument();
    final xmlString = xmlDoc.toXmlString(pretty: true);
    return xmlString;
  }
}

Future userModel() async {
  // Add your function code here!
}
