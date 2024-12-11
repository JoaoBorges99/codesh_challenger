import 'package:codesh_challenger/dictionary/model/definition.dart';

class Meaning {
  late String partOfSpeech;
  late List<Definition> definitions;
  List<String> synonyms = [];
  List<String> antonyms = [];

  Meaning({
    this.partOfSpeech = '',
    required this.definitions,
  });

  Meaning.fromJson({required Map<String,dynamic> json}){
    List dados = json['definitions'];
    partOfSpeech = json['partOfSpeech'];
    synonyms = List<String>.from(json['synonyms']);
    antonyms = List<String>.from(json['antonyms']);
    definitions = dados.map((e) => Definition.fromJson(json: e)).toList();
  }
  
}
