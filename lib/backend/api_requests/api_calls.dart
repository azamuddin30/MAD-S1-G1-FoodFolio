import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetRecipeCall {
  static Future<ApiCallResponse> call({
    String? query = 'null',
    int? offset = 10,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecipe',
      apiUrl: 'https://api.api-ninjas.com/v1/recipe?',
      callType: ApiCallType.GET,
      headers: {
        'X-Api-Key': 'PcLoisaFwIWw3h/8eZ98EQ==DiPpf0p8ZRCSJxIU',
        'Content-Type': 'application/json',
      },
      params: {
        'offset': offset,
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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
