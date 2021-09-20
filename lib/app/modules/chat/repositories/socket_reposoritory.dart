import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/chat/model/messageModel.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection.dart';
import 'package:projeto_chat_suporte/app/util/enterprise/entrerprise_data.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;


import '../chat_store.dart';

class SocketReposoritory {
  late final IO.Socket _socket;

  createSocket() {
    _socket = IO.io(SocketConection.local, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    _socket.connect();
    _socket.onConnect(
        (_) => {_socket.emit("enterpriseInformation", EntrerpresiData.id)});
    _socket.on(
        "response",
        (data) =>
            {Modular.get<ChatStore>().recieveMessage(Message.fromJson(data))});
  }

  senderMessage(Message message) {
    _socket.emit("sender", message.toJson());
  }
}
