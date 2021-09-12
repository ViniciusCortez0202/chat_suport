import 'package:flutter/foundation.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_Page.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ChatStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/:id', child: (_, args) => ChatPage(title: args.params['id'],)),
  ];
}
