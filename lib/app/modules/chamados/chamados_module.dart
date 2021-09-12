import 'package:projeto_chat_suporte/app/modules/chamados/chamados_Page.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/chamados_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/model/baseChamados.dart';

class ChamadosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => ChamadosStore()),    
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChamadosPage()),    
  ];
}
