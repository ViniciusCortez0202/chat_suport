import 'package:projeto_chat_suporte/app/modules/chat/chat_controller.dart';
import 'package:projeto_chat_suporte/app/modules/chat/repositories/socket_reposoritory.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'chat_page.dart';

class ChatModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => SocketReposoritory()),
    Bind.factory((i) => ChatController(socket: i.get<SocketReposoritory>())),
    Bind.lazySingleton((i) => ChatStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChatPage(chamado: args.data)),
  ];
}
