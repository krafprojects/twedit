class Tweet {
  final String text;
  final String author_id;
  final String created_at;
  final Object public_metrics;

  Tweet(
      {required this.text,
      required this.author_id,
      required this.created_at,
      required this.public_metrics});

  factory Tweet.fromJson(dynamic json) {
    return Tweet(
      text: json['text'] as String,
      author_id: json['author_id'] as String,
      created_at: json['created_at'] as String,
      public_metrics: json['public_metrics'] as int,
    );
  }

  static List<Tweet> tweetsFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Tweet.fromJson(data);
    }).toList();
  }
}
