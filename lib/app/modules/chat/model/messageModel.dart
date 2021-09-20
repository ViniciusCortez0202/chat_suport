class Message {
  final bool isMe;
  final String
        time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    required this.isMe,
    required this.time,
    required this.text,
    required this.unread,
  });

  factory Message.fromJson(Map json){
    return Message(
      isMe: json['isMe'],
      time: json['time'],
      text: json['text'],
      unread: json['unread']
    );
  }

  Map toJson(){
    return {
      'isMe': isMe,
      'time': time,
      'text': text,
      'unread': unread
    };
  }

}