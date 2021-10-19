import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_module.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_page.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_controller.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_module.dart';
import 'package:projeto_chat_suporte/app/services/sockets/socket_connection.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection_info.dart';


import 'modules/appBar/appBar_store.dart';
import 'modules/chamados/chamados_module.dart';
import 'modules/home/home_module.dart';
import 'modules/model/baseChamados.dart';
import 'modules/open_chats/openChats_module.dart';
import 'modules/servicos/servicos_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
   Bind.singleton((i) => AppBarPage()),
   Bind.singleton((i) => AppBarStore()),
   //Bind.singleton((i) => BaseChamados()),
   Bind.singleton((i) => SocketConnection()),
   Bind.singleton((i) => Dio(BaseOptions(baseUrl: SocketConectionInfo.http)))
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/appBar', module: AppBarModule()),
    ModuleRoute('/openChat', module: OpenChatsModule(), transition: TransitionType.noTransition),
    ModuleRoute('/chamados', module: ChamadosModule(), transition: TransitionType.noTransition),
    ModuleRoute('/servicos', module: ServicosModule(), transition: TransitionType.noTransition),
    ModuleRoute('/chat', module: ChatModule(),  transition: TransitionType.downToUp)
  ];
}
