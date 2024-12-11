import 'dart:convert';
import 'package:codesh_challenger/dictionary/model/error.dart';
import 'package:codesh_challenger/dictionary/model/word.dart';
import 'package:codesh_challenger/global/settings.dart';
import 'package:mobx/mobx.dart';
part 'controller_dictionary.g.dart';

class ControllerDictionary = ControllerDictionaryBase with _$ControllerDictionary;

abstract class ControllerDictionaryBase with Store{

  List<Map<String, String>> languages = [
    {"name" : "English", "language" : "en"},
    {"name" : "Portugues", "language" : "pt"},
    {"name" : "Spanish","language" : "es"},
  ];
  @observable
  bool loading = false;

  @observable
  String word = '';

  @observable
  Word wordMeanig = Word();

  @observable
  ErrorMessage error = ErrorMessage();

  Future getWordMeaning () async {
    wordMeanig = Word();
    error = ErrorMessage();

    loading = true;

    String response = await Settings().apiRequest(word: word);
    try{
      List data = jsonDecode(response);
     wordMeanig = data.map((e) => Word.fromJson(json: e)).toList().first;
    }catch(e){
      error = ErrorMessage.fromJson(json: jsonDecode(response));
    }finally{
      loading = false;
    }
  }

}