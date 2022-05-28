import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class LoginCall {
  static Future<ApiCallResponse> call({
    String usr = 'krishna',
    String pwd = 'krishna',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl:
          'http://hkmjerp.in/api/method/hkm.erpnext___custom.login.api.login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'usr': usr,
        'pwd': pwd,
      },
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.message.username''',
      );
  static dynamic api(dynamic response) => getJsonField(
        response,
        r'''$.message.api_key''',
      );
  static dynamic secret(dynamic response) => getJsonField(
        response,
        r'''$.message.api_secret''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.message.email''',
      );
  static dynamic success(dynamic response) => getJsonField(
        response,
        r'''$.message.success_key''',
      );
}

class CouponstatsCall {
  static Future<ApiCallResponse> call({
    String date = '',
    String slot = '',
    String auth = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'couponstats',
      apiUrl:
          'http://hkmjerp.in/api/method/hkm.prasadam_coupon_management.api.get_coupon_stats',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${auth}',
      },
      params: {
        'date': date,
        'slot': slot,
      },
      returnBody: true,
    );
  }

  static dynamic users(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class DashboardCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'dashboard',
      apiUrl:
          'http://hkmjerp.in/api/method/hkm.prasadam_coupon_management.api.get_dashboard_data',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'token a6cc3935556d644:f69a0506864256b',
      },
      params: {},
      returnBody: true,
    );
  }
}
