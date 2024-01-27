import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start twilio account  Group Code

class TwilioAccountGroup {
  static String baseUrl = 'https://joshrage.commitshoes.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static CreateSubAccountCall createSubAccountCall = CreateSubAccountCall();
  static DeleteSubAccountCall deleteSubAccountCall = DeleteSubAccountCall();
  static GetCountryCodesCall getCountryCodesCall = GetCountryCodesCall();
  static GetCountryCapabilitiesCall getCountryCapabilitiesCall =
      GetCountryCapabilitiesCall();
  static PurchaseNumberCall purchaseNumberCall = PurchaseNumberCall();
  static DeleteNumberFromSubAccountCall deleteNumberFromSubAccountCall =
      DeleteNumberFromSubAccountCall();
}

class CreateSubAccountCall {
  Future<ApiCallResponse> call({
    String? twilioFriendlyName = '',
    String? postTwilioRef = '',
  }) async {
    final ffApiRequestBody = '''
{
  "friendly_name": "${twilioFriendlyName}",
  "new_account_ref": "${postTwilioRef}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Sub account',
      apiUrl: '${TwilioAccountGroup.baseUrl}/create_subaccount/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic getTwilioAccountSID(dynamic response) => getJsonField(
        response,
        r'''$.sid''',
      );
}

class DeleteSubAccountCall {
  Future<ApiCallResponse> call({
    String? twilioSubAccountSid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Sub Account',
      apiUrl: '${TwilioAccountGroup.baseUrl}/delete_subaccount/',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'sub_account_sid': twilioSubAccountSid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic deleteSubAccountMsg(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class GetCountryCodesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Country Codes',
      apiUrl: '${TwilioAccountGroup.baseUrl}/get_country_codes/',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCountryCapabilitiesCall {
  Future<ApiCallResponse> call({
    String? countryCode = '',
    String? numberType = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Country Capabilities',
      apiUrl:
          '${TwilioAccountGroup.baseUrl}/get_available_numbers_and_capabilities/',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'country_code': countryCode,
        'number_type': numberType,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? getNumberCapabilities(dynamic response) => getJsonField(
        response,
        r'''$.numbers_capabilities''',
        true,
      ) as List?;
}

class PurchaseNumberCall {
  Future<ApiCallResponse> call({
    String? postPhoneNumber = '',
    String? postAccountRef = '',
    String? postNumberType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "new_account_ref": "${postAccountRef}",
  "phone_number": "${postPhoneNumber}",
  "number_type": "${postNumberType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Purchase Number',
      apiUrl: '${TwilioAccountGroup.baseUrl}/purchase_number/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteNumberFromSubAccountCall {
  Future<ApiCallResponse> call({
    String? delNumberSid = '',
    String? delTwilioUserRef = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete number from sub account',
      apiUrl: '${TwilioAccountGroup.baseUrl}/delete_subaccount_number/',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'phone_number_sid': delNumberSid,
        'twilio_user_ref': delTwilioUserRef,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End twilio account  Group Code

class ScheduleCall {
  static Future<ApiCallResponse> call({
    List<String>? idsList,
    String? userid = '',
  }) async {
    final ids = _serializeList(idsList);

    final ffApiRequestBody = '''
{
  "ids": ${ids},
  "uid": "${userid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Schedule',
      apiUrl: 'https://joshrage.commitshoes.com/calls-batch/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchEmailsCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    int? timeout,
    int? linkLimit,
  }) async {
    final ffApiRequestBody = '''
{
  "target_url": "${url}",
  "deep_link_limit": ${linkLimit},
  "timeout": ${timeout}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Emails',
      apiUrl: 'https://joshrage.commitshoes.com/extract_emails/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? emails(dynamic response) => (getJsonField(
        response,
        r'''$.emails''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class FetchPhoneNumbersCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    int? timeout,
    int? linkLimit,
  }) async {
    final ffApiRequestBody = '''
{
  "target_url": "${url}",
  "deep_link_limit": ${linkLimit},
  "timeout": ${timeout}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Phone Numbers',
      apiUrl: 'https://joshrage.commitshoes.com/extract_numbers/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? phoneNumbers(dynamic response) => (getJsonField(
        response,
        r'''$.phone_numbers''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
