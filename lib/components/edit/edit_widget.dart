import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_model.dart';
export 'edit_model.dart';

class EditWidget extends StatefulWidget {
  const EditWidget({
    super.key,
    required this.name,
  });

  final String? name;

  @override
  State<EditWidget> createState() => _EditWidgetState();
}

class _EditWidgetState extends State<EditWidget> {
  late EditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditModel());

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 350.0,
        height: 250.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Update',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: TextFormField(
                controller: _model.emailAddressController,
                focusNode: _model.emailAddressFocusNode,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Updated Text',
                  labelStyle: FlutterFlowTheme.of(context).bodySmall,
                  hintText: 'Enter your textl here...',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 0.0, 24.0),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                keyboardType: TextInputType.emailAddress,
                validator:
                    _model.emailAddressControllerValidator.asValidator(context),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 50.0),
              child: FFButtonWidget(
                onPressed: () async {
                  setState(() {
                    FFAppState().UpdatedText =
                        _model.emailAddressController.text;
                  });
                  if (widget.name == 'Clinic Name') {
                    await currentUserReference!.update(createUsersRecordData(
                      displayName: _model.emailAddressController.text,
                    ));
                  } else {
                    if (widget.name == 'Clinic Address') {
                      await currentUserReference!.update(createUsersRecordData(
                        address: _model.emailAddressController.text,
                      ));
                    } else {
                      if (widget.name == 'Phone Number ') {
                        await currentUserReference!
                            .update(createUsersRecordData(
                          phoneNumber: _model.emailAddressController.text,
                        ));
                      } else {
                        if (widget.name == 'Email') {
                          await currentUserReference!
                              .update(createUsersRecordData(
                            email: _model.emailAddressController.text,
                          ));
                        } else {
                          if (widget.name == 'Website') {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              website: _model.emailAddressController.text,
                            ));
                          }
                        }
                      }
                    }
                  }

                  Navigator.pop(context);
                },
                text: 'Update',
                options: FFButtonOptions(
                  height: 43.0,
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 10.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 16.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleLargeFamily),
                        lineHeight: 1.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                  hoverElevation: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
