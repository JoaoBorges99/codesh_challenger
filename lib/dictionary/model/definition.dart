class Definition {
  late String definition;


  Definition({
    this.definition = '',
  });

  Definition.fromJson({required Map<String,dynamic> json}){
    definition = json['definition'];

  }
}