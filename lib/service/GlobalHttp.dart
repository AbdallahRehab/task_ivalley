import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class GlobalHttpResponse {
  int? statusCode;
  String? body;

  GlobalHttpResponse({this.statusCode, this.body});
}

// General Http API
class GlobalHttp {
// POST
  static Future<GlobalHttpResponse> post(url, {body, contentTypeHeader}) async {
    var dio = Dio();

// bad request adapter
    dioBadRequestAdapter(dio);

    Response? response;

    try {
      response = await dio.post<String>(
        url,
        data: body,
        options: Options(
            headers: {"Accept": "application/json"},
            contentType: contentTypeHeader,
            receiveDataWhenStatusError: false,
            followRedirects: false,
            sendTimeout: 5000,
            validateStatus: (stats) {
              print(stats);
              return true;
            }),
      );
    } catch (e) {
      print("Response Of Post :: " + e.toString());
    }

    String responseBody = response!.data.toString();

    print("Response Of Post :: " + responseBody);

    return GlobalHttpResponse(
        statusCode: response.statusCode, body: responseBody);
  }

// Adapter
  static void dioBadRequestAdapter(Dio dio) {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => false;
      return client;
    };
  }
}
