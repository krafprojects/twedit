import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<PostReddit>> getPosts() async {
  final response = await http.get(
      Uri.https('www.reddit.com', '/r/FlutterDev/new.json'),
      headers: {'Authorization': 'Bearer mnhdHwfIf8hBTTJjXiyZtA'});
  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final List<dynamic> children = data['data']['children'];
    return children.map((child) => PostReddit.fromJson(child['data'])).toList();
  } else {
    throw Exception('Failed to load posts');
  }
}

class PostReddit {
  final String title;
  final String subreddit;
  final String author;
  final String thumbnail;
  final double created;

  // String get title => _title;
  // String get _subreddit => _subreddit;
  // String get _author => _author;
  // String get _thumbnail => _thumbnail;
  // String get _score => _score;

  PostReddit(
      {required this.title,
      required this.subreddit,
      required this.author,
      required this.thumbnail,
      required this.created});

  factory PostReddit.fromJson(Map<String, dynamic> json) {
    return PostReddit(
      title: json['title'],
      subreddit: json['subreddit'],
      author: json['author'],
      thumbnail: json['thumbnail'],
      created: json['created'],
    );
  }
}
