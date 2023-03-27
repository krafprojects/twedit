import 'dart:convert';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/PostContentReddit.dart';

class AppState extends ChangeNotifier {
  var _redditPosts = [];

  get getRedditPosts => _redditPosts;

  void getRedditData() async {
    const subreddit = "flutterdev";
    final url = Uri.parse("https://www.reddit.com/r/$subreddit/top.json");
    final response = await http.get(url, headers: {'User-Agent': 'TestRumblr'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final children = data['data']['children'];
      _redditPosts =
          children.map((child) => PostReddit.fromJson(child['data'])).toList();

      notifyListeners();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
