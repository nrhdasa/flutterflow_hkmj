import '../backend/api_requests/api_calls.dart';
import '../coupon_details/coupon_details_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CouponsGeneratedWidget extends StatefulWidget {
  const CouponsGeneratedWidget({Key key}) : super(key: key);

  @override
  _CouponsGeneratedWidgetState createState() => _CouponsGeneratedWidgetState();
}

class _CouponsGeneratedWidgetState extends State<CouponsGeneratedWidget> {
  DateTime datePicked;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Coupons Generated',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Poppins',
                fontSize: 24,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x230E151B),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: InkWell(
                    onTap: () async {
                      await DatePicker.showDatePicker(
                        context,
                        showTitleActions: true,
                        onConfirm: (date) {
                          setState(() => datePicked = date);
                        },
                        currentTime: getCurrentTimestamp,
                        minTime: getCurrentTimestamp,
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                            size: 45,
                          ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            dateTimeFormat('MMMMEEEEd', datePicked),
                            'Today',
                          ),
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ],
                    ),
                  ),
                ),
                FutureBuilder<ApiCallResponse>(
                  future: CouponsOfAUserCall.call(
                    date: functions.setDate(datePicked),
                    auth: FFAppState().authtoken,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: SpinKitFadingCube(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 50,
                          ),
                        ),
                      );
                    }
                    final columnCouponsOfAUserResponse = snapshot.data;
                    return Builder(
                      builder: (context) {
                        final morninglist = CouponsOfAUserCall.coupons(
                              (columnCouponsOfAUserResponse?.jsonBody ?? ''),
                            )?.toList() ??
                            [];
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(morninglist.length,
                                (morninglistIndex) {
                              final morninglistItem =
                                  morninglist[morninglistIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 8, 16, 0),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        duration: Duration(milliseconds: 300),
                                        reverseDuration:
                                            Duration(milliseconds: 300),
                                        child: CouponDetailsWidget(
                                          couponid: getJsonField(
                                            morninglistItem,
                                            r'''$.name''',
                                          ).toString(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFDD835),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFFFDD835),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12),
                                              bottomRight: Radius.circular(0),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(12),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 5, 10, 5),
                                            child: Text(
                                              getJsonField(
                                                morninglistItem,
                                                r'''$.slot''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFF1A237E),
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 12, 8),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 70,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Text(
                                                    getJsonField(
                                                      morninglistItem,
                                                      r'''$.number''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryColor,
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 15, 0),
                                                child: Container(
                                                  width: 4,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Created On',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2,
                                                  ),
                                                  Text(
                                                    functions.getDateinFormat(
                                                        getJsonField(
                                                          morninglistItem,
                                                          r'''$.creation''',
                                                        ).toString(),
                                                        'E, dd MMM | h:mm a'),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .subtitle1,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
