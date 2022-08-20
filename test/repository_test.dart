import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:youtubeapi/domain/model/video_model.dart';
import 'package:youtubeapi/infrastructure/impl/video_repository_impl.dart';
import 'package:youtubeapi/infrastructure/video_api_client.dart';
import 'package:youtubeapi/infrastructure/video_repository.dart';

import 'fixture.dart';
import 'repository_test.mocks.dart';

@GenerateMocks([VideoApiClient])
void main() {
  late MockVideoApiClient _apiClient;
  late VideoRepository _repository;

  setUp(() async {
    // FileNotFoundError回避のため
    TestWidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: '.env');
    _apiClient = MockVideoApiClient();
    _repository = VideoRepositoryImpl(_apiClient);
  });

  test('Test of fetch list.', () async {
    final mockResponse = fixture('get_response.json');
    when(_apiClient.get(any)).thenAnswer((_) async => mockResponse);
    final todoList = await _repository.fetchVideos('Flutter');
    verify(_apiClient.get(any)).called(1);
    expect(
      todoList,
      isA<List<VideoModel>>()
          .having((list) => list.length, 'response length', 5),
    );
  });
}
