import 'package:projeto_chat_suporte/app/modules/appBar/appBar_Page.dart';
import 'package:flutter_modular/flutter_modular.dart';
class AppBarModule extends Module {
  @override
  final List<Bind> binds = [
    
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => AppBarPage()),
  ];
}
