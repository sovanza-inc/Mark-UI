import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'twilio_create_account_new_home_widget.dart'
    show TwilioCreateAccountNewHomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TwilioCreateAccountNewHomeModel
    extends FlutterFlowModel<TwilioCreateAccountNewHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for NewAcountName widget.
  FocusNode? newAcountNameFocusNode;
  TextEditingController? newAcountNameController;
  String? Function(BuildContext, String?)? newAcountNameControllerValidator;
  String? _newAcountNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Create Sub account)] action in Button widget.
  ApiCallResponse? apiResult2h4;
  // State field(s) for CountryCode widget.
  String? countryCodeValue;
  FormFieldController<String>? countryCodeValueController;
  // State field(s) for NumberType widget.
  String? numberTypeValue;
  FormFieldController<String>? numberTypeValueController;
  // Stores action output result for [Backend Call - API (Get Country Capabilities)] action in Button widget.
  ApiCallResponse? apiResultCntryCap;
  // Stores action output result for [Backend Call - API (Purchase Number)] action in Button widget.
  ApiCallResponse? apiResultpfl;
  // Stores action output result for [Backend Call - API (delete number from sub account)] action in Button widget.
  ApiCallResponse? apiResultps7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
    newAcountNameControllerValidator = _newAcountNameControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    sideBarNavModel.dispose();
    newAcountNameFocusNode?.dispose();
    newAcountNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
