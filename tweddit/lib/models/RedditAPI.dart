import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse('https://oauth.reddit.com/r/flutterdev/hot');

  final headers = {
    'User-Agent': 'Mi aplicacion de Flutter',
    'Authorization': 'bearer mnhdHwfIf8hBTTJjXiyZtA'
  };

  final response = await http.get(url, headers: headers);

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    final posts = data['data']['children'];

    for (var post in posts) {
      final postTitle = post['data']['title'];
      print(postTitle);
    }
  } else {
    print('Error en la solicitud HTTP');
  }
}
