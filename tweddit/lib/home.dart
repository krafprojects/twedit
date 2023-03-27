import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:provider/provider.dart';
import 'package:tweddit/app_state.dart';
import 'package:tweddit/models/PostContentReddit.dart';
import 'package:tweddit/views/widgets/PostsCards.dart';

class MainPage extends MaterialPageRoute<void> {
  MainPage()
      : super(builder: (BuildContext context) {
          return Scaffold(
            body: const HomeScreen(),
          );
        });
}

void handleClick(String value) {
  switch (value) {
    case 'Logout':
      break;
    case 'Settings':
      break;
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    appState.getRedditData();
    var redditPosts = appState.getRedditPosts;

    return Scaffold(
      appBar: AppBar(
        title: Text(' Welcome to the World of Rumblr!'),
      ),
      body: ListView.builder(
        itemCount: redditPosts.length,
        itemBuilder: (context, index) {
          PostReddit post = redditPosts[index];
          DateTime timestamp =
              DateTime.fromMillisecondsSinceEpoch(post.created.toInt() * 1000);
          String formattedTime = timeago.format(timestamp, allowFromNow: true);

          return PostsCards(
              text: post.title,
              createdAt: formattedTime,
              authorID: post.author,
              thumbnailUrl: post.thumbnail);
        },
      ),
    );
  }
}

// End of the first tweet test


