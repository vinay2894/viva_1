class jokes{
  String joke;

  jokes ({
    required this.joke
});

  factory jokes.fromMap(Map<String,dynamic>map){
    return jokes(
      joke: map ['joke'],
    );
  }
}
class JokeApiResponse {
  final String category;
  final String type;
  final String setup;
  final String delivery;
  final String joke;
  final int id;
  final bool safe;
  final bool lang;

  JokeApiResponse({
    required this.category,
    required this.type,
    required this.setup,
    required this.delivery,
    required this.joke,
    required this.id,
    required this.safe,
    required this.lang,
  });

  factory JokeApiResponse.fromJson(Map<String, dynamic> json) {
    return JokeApiResponse(
      category: json['category'] ?? '',
      type: json['type'] ?? '',
      setup: json['setup'] ?? '',
      delivery: json['delivery'] ?? '',
      joke: json['joke'] ?? '',
      id: json['id'] ?? 0,
      safe: json['safe'] ?? false,
      lang: json['lang'] ?? false,
    );
  }
}