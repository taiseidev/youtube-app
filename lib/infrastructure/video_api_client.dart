// providerでDIしているため抽象クラス不要
abstract class VideoApiClient {
  Future<String> get(String endpoint);
}
