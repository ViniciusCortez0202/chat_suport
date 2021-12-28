import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/app_widget.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_controller.dart';
import 'package:projeto_chat_suporte/app/modules/chat/model/messageModel.dart';
import 'package:projeto_chat_suporte/app/shared/messages_chat/received_messages_store.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection_info.dart';
import 'package:projeto_chat_suporte/app/util/enterprise/entrerprise_data.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketConnection {
  late final IO.Socket _socket;

  SocketConnection() {
    _socket = IO.io(SocketConectionInfo.local, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
      'query': {
        'type': 1,
        'codeEnterprise': EntrerpresiData.id,
        'idUser': "111"
      }
    });
  }

  String createSocket() {
    if (_socket.connected) return _socket.id.toString();
    _socket.connect();
    _socket.onConnect((_) => {
      AppWidget.socketid = _socket.id!,
      print("WebSocket Conectado " + _socket.id!)
    });
    _socket.on(
        "message",
        (data) => {
              Modular.get<ReceivedMessagesStore>()
                  .putMessages(MessageModel.fromJson(data))
            });
    return _socket.id.toString();
  }

  senderMessage(MessageModel message) {
    _socket.emit("message", message.toJson());
  }
}
