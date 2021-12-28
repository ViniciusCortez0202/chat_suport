import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:projeto_chat_suporte/app/modules/chat/model/messageModel.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';
import 'package:projeto_chat_suporte/app/services/sockets/socket_connection.dart';
import 'package:projeto_chat_suporte/app/shared/messages_chat/received_messages_store.dart';

class ChatController {
  final SocketConnection socket;
  final ChatStore store;
  final TextEditingController sendText = TextEditingController();
  late CallModel call;

  ChatController({required this.socket, required this.store}) {
    Modular.get<ReceivedMessagesStore>().messages.observe((elements) {
      if (elements.list.last.idCall == "001") {
        store.recieveMessage(elements.list.last);
      }
    });
  }

  send() {
    var message = MessageModel(
        isMe: true,
        idCall: "001",
        text: sendText.text,
        unread: false,
        time: TimeOfDay.now().toString().substring(10, 15));
    socket.senderMessage(message);
    print("Message " + message.text);
    sendText.clear();
  }
}
