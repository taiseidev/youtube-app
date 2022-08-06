import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:youtubeapi/infrastructure/video_api_client.dart';

class VideoApiClientImpl extends VideoApiClient {
  static final _instance = VideoApiClientImpl._internal();
  factory VideoApiClientImpl({
    String baseUrl = 'https://www.googleapis.com/youtube/v3',
  }) {
    return _instance;
  }

  VideoApiClientImpl._internal();

  late final String baseUrl;

  @override
  Future<String> get(String endpoint) async {
    final dio = Dio();
    final url = '$baseUrl$endpoint';
    try {
      final response = await dio.get(url);
      return _parseResponse(response.statusCode!, response.data);
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
