import 'package:http/http.dart' as http;

const String baseUrl = 'https://yili-music-2038774-1302259617.ap-shanghai.run.tcloudbase.com';

Future<String> test() async {
  final response = await http
      .get(Uri.parse("$baseUrl/test"));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('请求错误');
  }
}