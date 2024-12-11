import 'package:http/http.dart';

class Settings {

  static const String url = 'https://api.dictionaryapi.dev/api/v2/entries';

  Future<String> apiRequest ({String language = 'en', required String word}) async {
    Response res = await get(
      Uri.parse("$url/$language/$word"),
    );
    
    try{
      return res.body;
    }catch(e){
      return {'api_error' : 'Error while searching word'}.toString();
    }
    
  } 
}