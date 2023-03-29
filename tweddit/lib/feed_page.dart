import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<String> _posts = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    'Nulla convallis mauris euismod, ultricies justo vitae, volutpat lorem.',
    'Praesent sit amet nibh fermentum, interdum elit id, venenatis neque.',
    'Maecenas tristique velit sed arcu feugiat, in rhoncus mi dictum.',
    'Donec euismod eros eget est consequat, sit amet bibendum risus fringilla.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(_posts[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
