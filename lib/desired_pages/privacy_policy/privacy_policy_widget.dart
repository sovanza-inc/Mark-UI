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
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
        title: 'PrivacyPolicy',
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
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                      threeColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      threeIcon: Icon(
                        Icons.email_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      fourcolor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      fouricon: FaIcon(
                        FontAwesomeIcons.userMd,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      fivecolor: FlutterFlowTheme.of(context).primaryBackground,
                      fiveicon: Icon(
                        Icons.schedule,
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
                                    'Privacy Policy',
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
                              '1. Introduction\n\nWelcome to Joshrage (\"we,\" \"us,\" or \"our\"). This Privacy Policy outlines how Joshrage collects, uses, and protects the personal information you provide when using our website and services (collectively, the \"Service\"). By using the Service, you agree to the terms of this Privacy Policy.\n\n2. Information We Collect\n\nWe may collect personal information when you use our Service, including but not limited to:\n\nContact information, such as name, email address, and phone number.\nClinic details and professional information.\nUser account information, including username and password.\nCommunication preferences.\n3. How We Use Your Information\n\nWe use the collected information for the following purposes:\n\nTo provide and maintain the Service.\nTo communicate with you about your account and our services.\nTo customize and personalize your experience.\nTo improve our services and develop new features.\nTo comply with legal obligations.\n4. Sharing Your Information\n\nWe do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as set forth in this Privacy Policy.\n\nWe may share your information with:\n\nService providers and partners assisting with the operation of the Service.\nThird parties when required by law or to protect our rights.\n5. Security\n\nWe take reasonable measures to protect your personal information from unauthorized access, disclosure, alteration, and destruction. However, no method of transmission over the internet or electronic storage is completely secure, and we cannot guarantee absolute security.\n\n6. Cookies and Similar Technologies\n\nWe use cookies and similar technologies to enhance your experience on the Service. You can control cookies through your browser settings, but disabling cookies may limit your ability to use certain features of the Service.\n\n7. Third-Party Links\n\nThe Service may contain links to third-party websites. We are not responsible for the privacy practices or content of these third-party sites.\n\n8. Children\'s Privacy\n\nThe Service is not intended for individuals under the age of 18. We do not knowingly collect personal information from children. If you are a parent or guardian and believe your child has provided us with personal information, please contact us.\n\n9. Changes to this Privacy Policy\n\nWe may update this Privacy Policy from time to time. The most recent version will be posted on our website with the effective date.\n\n10. Contact Information\n\nIf you have any questions or concerns about this Privacy Policy, please contact us at [Your Contact Information].\n\nBy using joshrage, you agree to the terms of this Privacy Policy.',
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
