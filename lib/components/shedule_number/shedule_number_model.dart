import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'shedule_number_widget.dart' show SheduleNumberWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SheduleNumberModel extends FlutterFlowModel<SheduleNumberWidget> {
  ///  Local state fields for this component.

  List<String> numbers = [];
  void addToNumbers(String item) => numbers.add(item);
  void removeFromNumbers(String item) => numbers.remove(item);
  void removeAtIndexFromNumbers(int index) => numbers.removeAt(index);
  void insertAtIndexInNumbers(int index, String item) =>
      numbers.insert(index, item);
  void updateNumbersAtIndex(int index, Function(String) updateFn) =>
      numbers[index] = updateFn(numbers[index]);

  int index = 0;

  List<String> documentsids = [];
  void addToDocumentsids(String item) => documentsids.add(item);
  void removeFromDocumentsids(String item) => documentsids.remove(item);
  void removeAtIndexFromDocumentsids(int index) => documentsids.removeAt(index);
  void insertAtIndexInDocumentsids(int index, String item) =>
      documentsids.insert(index, item);
  void updateDocumentsidsAtIndex(int index, Function(String) updateFn) =>
      documentsids[index] = updateFn(documentsids[index]);

  bool dis = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in SignInBtn widget.
  ScheduleRecord? num;
  // Stores action output result for [Backend Call - API (Schedule)] action in SignInBtn widget.
  ApiCallResponse? apiResult1nz;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
