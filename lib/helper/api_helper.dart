import 'package:http/http.dart'as http;
import 'package:viva_1/models/joke_models.dart';

class JokeApiHelper {
  JokeApiHelper._();

  static final JokeApiHelper api_helper = JokeApiHelper._();

  String api = "https://jokeapi-v2.p.rapidapi.com/joke/Any?format=json&contains=C%2523&idRange=0-150&blacklistFlags=nsfw%2Cracist";
}