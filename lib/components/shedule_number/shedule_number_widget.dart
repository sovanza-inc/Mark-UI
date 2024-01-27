import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shedule_number_model.dart';
export 'shedule_number_model.dart';

class SheduleNumberWidget extends StatefulWidget {
  const SheduleNumberWidget({super.key});

  @override
  State<SheduleNumberWidget> createState() => _SheduleNumberWidgetState();
}

class _SheduleNumberWidgetState extends State<SheduleNumberWidget> {
  late SheduleNumberModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SheduleNumberModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => setState(() {}));
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
        width: MediaQuery.sizeOf(context).width * 0.75,
        height: MediaQuery.sizeOf(context).height * 0.7,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 15.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add Number',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 26.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.2,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onFieldSubmitted: (_) async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                setState(() {
                                  _model
                                      .addToNumbers(_model.textController.text);
                                });
                                setState(() {
                                  _model.textController?.clear();
                                });
                              },
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintText: 'Enter Phone Number Here...',
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              maxLength: 15,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              buildCounter: (context,
                                      {required currentLength,
                                      required isFocused,
                                      maxLength}) =>
                                  null,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          setState(() {
                            _model.addToNumbers(_model.textController.text);
                          });
                          setState(() {
                            _model.textController?.clear();
                          });
                        },
                        text: 'Insert',
                        options: FFButtonOptions(
                          width: 80.0,
                          height: 45.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ].divide(SizedBox(width: 10.0)),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.32,
                      decoration: BoxDecoration(
                        color: Color(0xFFF8F8F8),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Builder(
                          builder: (context) {
                            final nums = _model.numbers.toList();
                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 6.0,
                              ),
                              scrollDirection: Axis.vertical,
                              itemCount: nums.length,
                              itemBuilder: (context, numsIndex) {
                                final numsItem = nums[numsIndex];
                                return Text(
                                  numsItem,
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyLargeFamily,
                                        fontSize: 18.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily),
                                      ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FFButtonWidget(
                    onPressed: _model.dis
                        ? null
                        : () async {
                            Navigator.pop(context);
                          },
                    text: 'Close',
                    options: FFButtonOptions(
                      width: 130.0,
                      height: 50.0,
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 10.0, 24.0, 10.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleLarge
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                      disabledColor: Color(0xFFACACAC),
                      disabledTextColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      hoverColor: Color(0xFFACACAC),
                      hoverBorderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        width: 1.0,
                      ),
                      hoverElevation: 2.0,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: (_model.numbers.length <= 0)
                        ? null
                        : () async {
                            setState(() {
                              _model.dis = false;
                            });
                            setState(() {
                              _model.textController?.clear();
                            });
                            while (_model.index <
                                valueOrDefault<int>(
                                  _model.numbers.length,
                                  0,
                                )) {
                              var scheduleRecordReference =
                                  ScheduleRecord.createDoc(
                                      currentUserReference!);
                              await scheduleRecordReference
                                  .set(createScheduleRecordData(
                                number: valueOrDefault<String>(
                                  _model.numbers[_model.index],
                                  '0',
                                ),
                                status: false,
                              ));
                              _model.num = ScheduleRecord.getDocumentFromData(
                                  createScheduleRecordData(
                                    number: valueOrDefault<String>(
                                      _model.numbers[_model.index],
                                      '0',
                                    ),
                                    status: false,
                                  ),
                                  scheduleRecordReference);
                              setState(() {
                                _model.addToDocumentsids(
                                    _model.num!.reference.id);
                              });
                              setState(() {
                                _model.index = _model.index + 1;
                              });
                            }
                            unawaited(
                              () async {
                                _model.apiResult1nz = await ScheduleCall.call(
                                  userid: currentUserReference?.id,
                                  idsList: _model.documentsids,
                                );
                              }(),
                            );
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Request Submitted',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 18.0,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                              ),
                            );

                            setState(() {});
                          },
                    text: 'Make Request',
                    options: FFButtonOptions(
                      height: 50.0,
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 10.0, 24.0, 10.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: FlutterFlowTheme.of(context)
                          .titleLarge
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                      disabledColor: Color(0xFFACACAC),
                      disabledTextColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      hoverElevation: 2.0,
                    ),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 25.0)),
          ),
        ),
      ),
    );
  }
}
