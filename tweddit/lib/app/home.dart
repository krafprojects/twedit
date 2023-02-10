import 'package:flutter/material.dart';
import 'package:tweddit/views/widgets/TweetsCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}



class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.train), SizedBox(width: 10), Text('Twedit')],
        ),
      ),
      body: TweetsCard(
        text: 'Content Section',
        author_id: 'ZacMel',
        created_at: '1/31/23',
        thumbnailUrl:
            'https://miro.medium.com/max/1200/1*njhuKpqziXtVFjykPV3yoQ.jpeg',
      ),
    );
  }
}


