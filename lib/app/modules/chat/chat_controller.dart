import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:projeto_chat_suporte/app/modules/chat/model/messageModel.dart';
import 'package:projeto_chat_suporte/app/services/sockets/socket_connection.dart';

class ChatController {

  final SocketConnection socket;
  final ChatStore store;
  final TextEditingController sendText = TextEditingController();
  
  ChatController({required this.socket, required this.store});

  send(){    
    var message = Message(isMe: true, text: sendText.text, unread: false, time: TimeOfDay.now().toString().substring(10, 15));
    store.recieveMessage(message);
    socket.senderMessage(message);  
    print("Message " + message.text);
    sendText.clear();
  }
}