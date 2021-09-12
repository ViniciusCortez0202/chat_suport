import 'package:flutter_modular/flutter_modular.dart';
import '../open_chats/openChats_store.dart';
import 'openChats_page.dart';

class OpenChatsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => OpenChatsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => OpenChatsPage()),
  ];
}
