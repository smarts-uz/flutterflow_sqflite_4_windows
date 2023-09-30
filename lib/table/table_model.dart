import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'table_widget.dart' show TableWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TableModel extends FlutterFlowModel<TableWidget> {
  ///  Local state fields for this page.

  List<UserMasterStruct> dbRefresher = [];
  void addToDbRefresher(UserMasterStruct item) => dbRefresher.add(item);
  void removeFromDbRefresher(UserMasterStruct item) => dbRefresher.remove(item);
  void removeAtIndexFromDbRefresher(int index) => dbRefresher.removeAt(index);
  void insertAtIndexInDbRefresher(int index, UserMasterStruct item) =>
      dbRefresher.insert(index, item);
  void updateDbRefresherAtIndex(
          int index, Function(UserMasterStruct) updateFn) =>
      dbRefresher[index] = updateFn(dbRefresher[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - queryUserListAction] action in table widget.
  List<UserMasterStruct>? onStartup;
  // Stores action output result for [Custom Action - folderfind] action in bwGetDbPath widget.
  String? dapath;
  // State field(s) for id widget.
  TextEditingController? idController;
  String? Function(BuildContext, String?)? idControllerValidator;
  // State field(s) for editUserName widget.
  TextEditingController? editUserNameController;
  String? Function(BuildContext, String?)? editUserNameControllerValidator;
  // State field(s) for editEmail widget.
  TextEditingController? editEmailController;
  String? Function(BuildContext, String?)? editEmailControllerValidator;
  // State field(s) for editTitle widget.
  TextEditingController? editTitleController;
  String? Function(BuildContext, String?)? editTitleControllerValidator;
  // Stores action output result for [Custom Action - queryUserListAction] action in subCreateUser widget.
  List<UserMasterStruct>? qResult;
  // Stores action output result for [Custom Action - string2int] action in subUpdateUser widget.
  int? idAsInt;
  // Stores action output result for [Custom Action - queryUserListAction] action in subUpdateUser widget.
  List<UserMasterStruct>? updatePushToPageState;
  // Stores action output result for [Custom Action - string2int] action in subDeleteUser widget.
  int? intToDelete;
  // Stores action output result for [Custom Action - queryUserListAction] action in subDeleteUser widget.
  List<UserMasterStruct>? queryAfterDelete;
  // Stores action output result for [Custom Action - whatUser] action in Container widget.
  int? id2get;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    idController?.dispose();
    editUserNameController?.dispose();
    editEmailController?.dispose();
    editTitleController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
