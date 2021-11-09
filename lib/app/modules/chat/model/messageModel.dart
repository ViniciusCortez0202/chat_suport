class MessageModel {
  final bool isMe;
  final String
        time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;
  final String idCall;

  MessageModel({
    required this.isMe,
    required this.time,
    required this.text,
    required this.unread,
    required this.idCall
  });

  factory MessageModel.fromJson(Map json){
    return MessageModel(
      isMe: json['isMe'] == "123",
      time: json['time'],
      text: json['message'],
      idCall: json['idCall'],
      unread: false
    );
  }

  Map toJson(){
    return {
      'type': 1,
      'idUser': "123",
      'time': time,
      'message': text,
      'idCall': idCall
    };
  }

}