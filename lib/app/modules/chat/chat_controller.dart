import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:projeto_chat_suporte/app/modules/chat/model/messageModel.dart';
import 'package:projeto_chat_suporte/app/modules/chat/repositories/socket_reposoritory.dart';

class ChatController {

  final SocketReposoritory socket;
  final ChatStore store = Modular.get<ChatStore>();
  final TextEditingController sendText = TextEditingController();

  ChatController({required this.socket}){
    socket.createSocket();
  }

  send(){    
    var message = Message(isMe: true, text: sendText.text, unread: false, time: TimeOfDay.now().toString().substring(10, 15));
    store.recieveMessage(message);
    socket.senderMessage(message);  
    print("Message " + message.text);
    sendText.clear();
  }
}