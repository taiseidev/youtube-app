import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'package:youtubeapi/infrastructure/video_api_client.dart';

final videoApiClientImplProvider =
    Provider<VideoApiClient>((_) => VideoApiClientImpl());

class VideoApiClientImpl extends VideoApiClient {
  // インスタンスをキャッシュ
  static final _instance =
      VideoApiClientImpl._internal('https://www.googleapis.com/youtube/v3');

  // factoryコンストラクタはインスタンスを生成せずにキャッシュを返す
  factory VideoApiClientImpl() {
    return _instance;
  }
  // クラス生成時にinstanceを生成するコンストラクタ
  VideoApiClientImpl._internal(this.baseUrl);

  final String baseUrl;

  @override
  Future<String> get(String endpoint) async {
    final url = '$baseUrl$endpoint';
    try {
      final response = await http.get(Uri.parse(url));
      return _parseResponse(response.statusCode, response.body);
    } on SocketException {
      throw Exception('No Internet Connection');
    }
  }

  String _parseResponse(int status, String body) {
    switch (status) {
      case 200:
        return body;
      default:
        final decodedJson = json.decode(body) as Map<String, dynamic>;
        throw Exception('$status ${decodedJson['message']}');
    }
  }
}
