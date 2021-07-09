import 'dart:convert';
import 'package:http/http.dart';
import 'package:marketplacemobile/domain/data_sources/contracts/iremote_data_provider.dart';

class RemoteDataProvider implements IRemoteDataProvider {
  final Client client = Client();
  @override
  Future<String> get(String url,
      {Map<String, String> headers, Map<String, Object> query}) async {
    final rawUrl = '$url${query != null ? '?${mapToQuery(query)}' : ''}';
    final response = await client.get(Uri.parse(rawUrl), headers: headers);
    return utf8.decode(response.bodyBytes);
  }

  @override
  Future<dynamic> post(String url,
      {Map<String, String> headers, Map<String, Object> body}) async {
    final response =
        await client.post(Uri.parse(url), headers: headers, body: body);

    return jsonDecode(utf8.decode(response.bodyBytes));
  }

  String mapToQuery(Map<String, Object> query) {
    final queryBuilder = StringBuffer();
    for (var key in query.keys) {
      final value = query[key];

      if (value is List) {
        var initialValue = true;
        for (var data in value) {
          if (queryBuilder.isEmpty) {
            queryBuilder.write('$key=$data');
            initialValue = false;
          } else if (initialValue) {
            queryBuilder.write('&$key=$data');
            initialValue = false;
          } else {
            queryBuilder.write(',$data');
          }
        }
        continue;
      }

      if (queryBuilder.isEmpty) {
        queryBuilder.write('$key=$value');
      } else {
        queryBuilder.write('&$key=$value');
      }
    }
    return queryBuilder.toString();
  }
}
