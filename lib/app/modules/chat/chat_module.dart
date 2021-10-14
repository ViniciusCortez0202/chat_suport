import 'package:projeto_chat_suporte/app/modules/chat/chat_controller.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/services/sockets/socket_connection.dart';

import 'chat_page.dart';

class ChatModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ChatStore()),
    Bind.lazySingleton((i) => ChatController(socket: i.get<SocketConnection>(), store: i.get<ChatStore>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChatPage(chamado: args.data)),
  ];
}
