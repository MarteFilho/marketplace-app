mixin IRemoteDataProvider {
  Future<String> get(String url,
      {Map<String, String> headers, Map<String, Object> query});
  Future<dynamic> post(String url,
      {Map<String, String> headers, Map<String, Object> body});
}
