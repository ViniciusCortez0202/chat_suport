import 'package:dio/dio.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/repositories/novos_chamados_repository.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/chamados_Page.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/chamados_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/pages/novo_chamado/novo_chamado_page.dart';

class ChamadosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NovosChamadosRepository(Modular.get<Dio>())),
    Bind.singleton((i) => ChamadosStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChamadosPage()),
    ChildRoute('/newCall', child: (_, args) => NovoChamadoPage())
  ];
}
