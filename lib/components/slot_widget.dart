import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SlotWidget extends StatefulWidget {
  const SlotWidget({Key key}) : super(key: key);

  @override
  _SlotWidgetState createState() => _SlotWidgetState();
}

class _SlotWidgetState extends State<SlotWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.44,
        height: 350,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x34090F13),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Text(
                  'Evening',
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'Used',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        '${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.used''',
                        ).toString()}/${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.generated''',
                        ).toString()}',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: LinearPercentIndicator(
                    percent: 0.4,
                    width: MediaQuery.of(context).size.width * 0.38,
                    lineHeight: 8,
                    animation: true,
                    progressColor: FlutterFlowTheme.of(context).primaryColor,
                    backgroundColor: FlutterFlowTheme.of(context).lineColor,
                    barRadius: Radius.circular(8),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'QR Generated',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        '${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.generated''',
                        ).toString()}/${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.credit''',
                        ).toString()}',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                  child: LinearPercentIndicator(
                    percent: 0.4,
                    width: MediaQuery.of(context).size.width * 0.38,
                    lineHeight: 8,
                    animation: true,
                    progressColor: FlutterFlowTheme.of(context).primaryColor,
                    backgroundColor: FlutterFlowTheme.of(context).lineColor,
                    barRadius: Radius.circular(8),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'Requested',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        '+${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.request''',
                        ).toString()}',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'Released',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        '-${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.release''',
                        ).toString()}',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'Transferred',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        '-${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.transfer_sent''',
                        ).toString()}',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'Received',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        '+${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.transfer_rec''',
                        ).toString()}',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 210,
                height: 2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).textColor,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        'Credits',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Text(
                        '${getJsonField(
                          (wrapDashboardResponse?.jsonBody ?? ''),
                          r'''$.message.Evening.credit''',
                        ).toString()}',
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
