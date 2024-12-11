import 'package:codesh_challenger/dictionary/model/meaning.dart';

class Word {
  late String word;
  List<Meaning> meanings = [];

  Word({
    this.word = '',
  });

  Word.fromJson({required Map<String, dynamic> json}){
    List dados = json['meanings'];
    word = json['word'];
    meanings = dados.map((e) => Meaning.fromJson(json: e)).toList();
  }
}