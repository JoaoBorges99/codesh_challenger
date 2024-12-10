import 'package:codesh_challenger/global/settings.dart';

class ControllerDictionar {

  List<Map<String, String>> languages = [
    {"name" : "English", "language" : "en"},
    {"name" : "Portugues", "language" : "pt"},
    {"name" : "Spanish","language" : "es"},
  ];


  String word = '';

  Future getWordMeaning () async {
    await Settings().apiRequest(word: word);
  }

}