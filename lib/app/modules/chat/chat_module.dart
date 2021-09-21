import 'package:projeto_chat_suporte/app/modules/chat/chat_controller.dart';
import 'package:projeto_chat_suporte/app/modules/chat/repositories/socket_reposoritory.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'chat_page.dart';

class ChatModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ChatStore()),
    Bind.lazySingleton((i) => SocketReposoritory()),
    Bind.lazySingleton((i) => ChatController(socket: i.get<SocketReposoritory>(), store: i.get<ChatStore>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChatPage(chamado: args.data)),
  ];
}
