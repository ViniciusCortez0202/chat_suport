import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:projeto_chat_suporte/app/modules/chat/model/messageModel.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection_info.dart';
import 'package:projeto_chat_suporte/app/util/enterprise/entrerprise_data.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketConnection {
  late final IO.Socket _socket;

  String createSocket() {
    _socket = IO.io(SocketConectionInfo.local, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
      'query': {'type': 1,'codeEnterprise': EntrerpresiData.id, 'idUser': "Vinicius"}
    });
    _socket.connect();
    _socket.onConnect((_) => {
         print("WebSocket Conectado")
        });
    _socket.on(
        "message",
        (data) =>
            {Modular.get<ChatStore>().recieveMessage(Message.fromJson(data))});
    return _socket.id.toString();
  }

  senderMessage(Message message) {
    _socket.emit("sender", message.toJson());
  }
}
