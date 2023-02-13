import 'package:flutter/material.dart';
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.train),
            SizedBox(width: 10),
            Text(' Welcome to the World of Rumblr!')
          ],
        ),
      ),
      body: PostsCards(
        text: 'Content Section',
        author_id: 'ZacMell',
        created_at: '1/31/23',
        thumbnailUrl:
            'https://miro.medium.com/max/1200/1*njhuKpqziXtVFjykPV3yoQ.jpeg',
      ),
    );
  }
} // End of the first tweet test


