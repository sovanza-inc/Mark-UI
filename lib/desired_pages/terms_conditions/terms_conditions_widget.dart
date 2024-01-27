import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terms_conditions_model.dart';
export 'terms_conditions_model.dart';

class TermsConditionsWidget extends StatefulWidget {
  const TermsConditionsWidget({super.key});

  @override
  State<TermsConditionsWidget> createState() => _TermsConditionsWidgetState();
}

class _TermsConditionsWidgetState extends State<TermsConditionsWidget> {
  late TermsConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsConditionsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'TermsConditions',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  wrapWithModel(
                    model: _model.sideBarNavModel,
                    updateCallback: () => setState(() {}),
                    child: SideBarNavWidget(
                      oneBG: FlutterFlowTheme.of(context).secondaryBackground,
                      oneIcon: FaIcon(
                        FontAwesomeIcons.sms,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      twoBG: FlutterFlowTheme.of(context).secondaryBackground,
                      twoIcon: Icon(
                        Icons.privacy_tip,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      threeColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      threeIcon: Icon(
                        Icons.email_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      fourcolor: FlutterFlowTheme.of(context).primaryBackground,
                      fouricon: FaIcon(
                        FontAwesomeIcons.userMd,
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      fivecolor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      fiveicon: Icon(
                        Icons.schedule_sharp,
                      ),
                      sixicon: Icon(
                        Icons.call,
                      ),
                      sixbg: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 44.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                              ),
                            ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 24.0, 0.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Terms & Conditions ',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 30.0, 20.0, 30.0),
                            child: Text(
                              '1. Acceptance of Terms\n\nBy accessing or using Joshrage, including any features and services provided by Joshrage (collectively, the \"Service\"), you agree to comply with and be bound by these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use the Service.\n\n2. Changes to Terms\n\nJoshrage reserves the right to modify or revise these Terms and Conditions at any time without notice. Your continued use of the Service following the posting of any changes constitutes acceptance of those changes.\n\n3. Use of the Service\n\nYou agree to use the Service only for lawful purposes and in accordance with these Terms and Conditions. You are responsible for ensuring that your use of the Service complies with all applicable laws and regulations.\n\n4. User Accounts\n\nTo access certain features of the Service, you may be required to create an account. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account.\n\n5. Intellectual Property\n\nAll content, design, and functionality of the Service are the property of Joshrage and are protected by copyright, trademark, and other intellectual property laws. You may not reproduce, distribute, modify, display, perform, or otherwise use any part of the Service without the written consent of Joshrage.\n\n6. Privacy\n\nYour use of the Service is also governed by our Privacy Policy, which can be found at [link to privacy policy]. By using the Service, you consent to the terms of the Privacy Policy.\n\n7. Limitation of Liability\n\nJoshrage shall not be liable for any direct, indirect, incidental, special, consequential, or exemplary damages, including but not limited to, damages for loss of profits, goodwill, use, data, or other intangible losses resulting from the use of or inability to use the Service.\n\n8. Termination\n\nJoshrage reserves the right to terminate or suspend your account and access to the Service, without notice, for conduct that we believe violates these Terms and Conditions or is harmful to other users of the Service or third parties.\n\n9. Governing Law\n\nThese Terms and Conditions shall be governed by and construed in accordance with the laws of [Your Jurisdiction], without regard to its conflict of law principles.\n\n10. Contact Information\n\nIf you have any questions or concerns regarding these Terms and Conditions, please contact us at saad.naeem@ultratech.space\n\nBy using Joshrage, you agree to these Terms and Conditions.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
