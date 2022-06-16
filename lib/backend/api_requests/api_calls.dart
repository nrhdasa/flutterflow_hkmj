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
  static Future<ApiCallResponse> call({
    String auth = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'dashboard',
      apiUrl:
          'http://hkmjerp.in/api/method/hkm.prasadam_coupon_management.api.get_dashboard_data',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${auth}',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class CreateRequestCall {
  static Future<ApiCallResponse> call({
    String auth = '',
    String date = '',
    String slot = '',
    int number,
    String couponType = '',
  }) {
    final body = '''
{
  "type": "Request",
  "date": "${date}",
  "slot": "${slot}",
  "number": "${number}",
  "coupon_type": "${couponType}",
  "docstatus": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createRequest',
      apiUrl: 'http://hkmjerp.in/api/resource/Prasadam CPN Request',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${auth}',
      },
      params: {
        'date': date,
        'slot': slot,
        'number': number,
        'coupon_type': couponType,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
}

class GetPrasadamRequestUsersCall {
  static Future<ApiCallResponse> call({
    String auth = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPrasadamRequestUsers',
      apiUrl:
          'http://hkmjerp.in/api/method/hkm.prasadam_coupon_management.api.fetch_request_users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${auth}',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic users(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class CreateTransferCall {
  static Future<ApiCallResponse> call({
    String auth = '',
    String date = '',
    String slot = '',
    int number,
    String transferTo = '',
    String couponType = '',
  }) {
    final body = '''
{
  "type": "Transfer",
  "date": "${date}",
  "slot": "${slot}",
  "number": ${number},
  "coupon_type": "${couponType}",
  "transfer_to": "${transferTo}",
  "docstatus": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createTransfer',
      apiUrl: 'http://hkmjerp.in/api/resource/Prasadam CPN Request',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${auth}',
      },
      params: {
        'date': date,
        'slot': slot,
        'number': number,
        'transfer_to': transferTo,
        'coupon_type': couponType,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
}

class IsLoggedInCall {
  static Future<ApiCallResponse> call({
    String auth = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'isLoggedIn',
      apiUrl:
          'http://hkmjerp.in/api/method/hkm.erpnext___custom.login.api.isLoggedIn',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${auth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic msg(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class GenerateCouponCall {
  static Future<ApiCallResponse> call({
    String auth = '',
    String date = '',
    String slot = '',
    int number,
    String authority = '',
    String couponType = '',
  }) {
    final body = '''
{
  "date": "${date}",
  "slot": "${slot}",
  "docstatus": 1,
  "number": ${number},
  "coupon_type": "${couponType}",
  "authority": "${authority}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'generateCoupon',
      apiUrl: 'http://hkmjerp.in/api/resource/Prasadam Coupon',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${auth}',
      },
      params: {
        'date': date,
        'slot': slot,
        'number': number,
        'authority': authority,
        'coupon_type': couponType,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
}

class CouponsOfAUserCall {
  static Future<ApiCallResponse> call({
    String date = '',
    String auth = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'couponsOfAUser',
      apiUrl:
          'http://hkmjerp.in/api/method/hkm.prasadam_coupon_management.api.get_coupons_of_user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${auth}',
      },
      params: {
        'date': date,
      },
      returnBody: true,
    );
  }

  static dynamic coupons(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class ACouponDetailsCall {
  static Future<ApiCallResponse> call({
    String id = '',
    String auth = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'aCouponDetails',
      apiUrl: 'http://hkmjerp.in/api/resource/Prasadam Coupon/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${auth}',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic details(dynamic response) => getJsonField(
        response,
        r'''$.message.data''',
      );
}

class CreateReleaseCall {
  static Future<ApiCallResponse> call({
    String auth = '',
    String date = '',
    String slot = '',
    int number,
    String couponType = '',
  }) {
    final body = '''
{
  "type": "Release",
  "date": "${date}",
  "slot": "${slot}",
  "number": ${number},
  "coupon_type": "${couponType}",
  "docstatus": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createRelease',
      apiUrl: 'http://hkmjerp.in/api/resource/Prasadam CPN Request',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${auth}',
      },
      params: {
        'date': date,
        'slot': slot,
        'number': number,
        'coupon_type': couponType,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data.name''',
      );
}

class ConfirmCouponUsedCall {
  static Future<ApiCallResponse> call({
    String auth = '',
    String coupon = '',
  }) {
    final body = '''
{
  "coupon": "${coupon}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirmCouponUsed',
      apiUrl:
          'http://hkmjerp.in/api/method/hkm.prasadam_coupon_management.api.confirmCouponUsed',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${auth}',
      },
      params: {
        'coupon': coupon,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
