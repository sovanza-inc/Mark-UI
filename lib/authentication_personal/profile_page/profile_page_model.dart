import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ClinicAddress widget.
  FocusNode? clinicAddressFocusNode;
  TextEditingController? clinicAddressController;
  String? Function(BuildContext, String?)? clinicAddressControllerValidator;
  String? _clinicAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  String? _phoneNumberControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Website widget.
  FocusNode? websiteFocusNode1;
  TextEditingController? websiteController1;
  String? Function(BuildContext, String?)? websiteController1Validator;
  String? _websiteController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Website widget.
  FocusNode? websiteFocusNode2;
  TextEditingController? websiteController2;
  String? Function(BuildContext, String?)? websiteController2Validator;
  String? _websiteController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    clinicAddressControllerValidator = _clinicAddressControllerValidator;
    phoneNumberControllerValidator = _phoneNumberControllerValidator;
    websiteController1Validator = _websiteController1Validator;
    websiteController2Validator = _websiteController2Validator;
  }

  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    clinicAddressFocusNode?.dispose();
    clinicAddressController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    websiteFocusNode1?.dispose();
    websiteController1?.dispose();

    websiteFocusNode2?.dispose();
    websiteController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
