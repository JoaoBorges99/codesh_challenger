class ErrorMessage {
  late String title;
  late String message;
  late String resolution;

  ErrorMessage({
    this.title = '',
    this.message = '',
    this.resolution = '',
  });

  ErrorMessage.fromJson({required Map<String, dynamic> json}){
    title = json['title'];
    message = json['message'];
    resolution = json['resolution'];
  }
}