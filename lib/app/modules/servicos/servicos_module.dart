import 'package:projeto_chat_suporte/app/modules/servicos/pages/description/description_page.dart';
import 'package:projeto_chat_suporte/app/modules/servicos/servicos_Page.dart';
import 'package:projeto_chat_suporte/app/modules/servicos/servicos_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ServicosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ServicosStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ServicosPage()),
    ChildRoute('/descriptionService', child: (_, args) => DescriptionPage(contrato: args.data) )
  ];
}
