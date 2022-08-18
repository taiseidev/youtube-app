import 'package:flutter_test/flutter_test.dart';
import 'package:youtubeapi/infrastructure/impl/video_api_client_impl.dart';

void main() {
  test(('singletonテスト'), () {
    final singleton1 = VideoApiClientImpl();
    final singleton2 = VideoApiClientImpl();
    expect(singleton1.hashCode == singleton2.hashCode, true);
  });
}
