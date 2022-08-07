import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';
import 'package:youtubeapi/infrastructure/video_api_client.dart';

final videoApiClientProvider = Provider((ref) => VideoApiClientImpl());

class VideoApiClientImpl extends VideoApiClient {
  static final _instance = VideoApiClientImpl._internal();
  factory VideoApiClientImpl({
    String baseUrl = 'https://www.googleapis.com/youtube/v3',
  }) {
    return _instance;
  }

  VideoApiClientImpl._internal();

  final String baseUrl = 'https://www.googleapis.com/youtube/v3';

  @override
  Future<String> get(String endpoint) async {
    final dio = Dio();
    dio.interceptors.add(LogInterceptor());
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
