class Word {
  late String word;
  late String phonetic;
  late String origin;

  Word({
    this.word = '',
    this.phonetic = '',
    this.origin = '',
  });

  Word.fromJson({required Map<String, dynamic> json}){
    word = json['word'];
    phonetic = json['phonetic'];
    origin = json['origin'];
  }
}