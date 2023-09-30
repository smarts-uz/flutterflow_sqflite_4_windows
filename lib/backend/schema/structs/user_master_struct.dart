// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserMasterStruct extends BaseStruct {
  UserMasterStruct({
    int? id,
    String? userName,
    String? email,
    String? title,
  })  : _id = id,
        _userName = userName,
        _email = email,
        _title = title;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  static UserMasterStruct fromMap(Map<String, dynamic> data) =>
      UserMasterStruct(
        id: castToType<int>(data['id']),
        userName: data['userName'] as String?,
        email: data['email'] as String?,
        title: data['title'] as String?,
      );

  static UserMasterStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserMasterStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'userName': _userName,
        'email': _email,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserMasterStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserMasterStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserMasterStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserMasterStruct &&
        id == other.id &&
        userName == other.userName &&
        email == other.email &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([id, userName, email, title]);
}

UserMasterStruct createUserMasterStruct({
  int? id,
  String? userName,
  String? email,
  String? title,
}) =>
    UserMasterStruct(
      id: id,
      userName: userName,
      email: email,
      title: title,
    );
