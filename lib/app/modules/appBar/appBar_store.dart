import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'appBar_store.g.dart';

class AppBarStore = _AppBarStoreBase with _$AppBarStore;
abstract class _AppBarStoreBase with Store {

@observable
  int selectedIndex = 0;
  List<Pages> pages = [Pages.OpenChat, Pages.Chamados, Pages.Servicos];

  @action
  changePage(Pages index, int position) {
    selectedIndex = position;

    switch (index) {
      case Pages.OpenChat:
        Modular.to.navigate('/${Pages.OpenChat.router}');
        break;
      case Pages.Chamados:
        Modular.to.navigate('/${Pages.Chamados.router}');
        break;
      case Pages.Servicos:
        Modular.to.navigate('/${Pages.Servicos.router}');
        break;    
    }

  }
}

enum Pages{
  OpenChat,
  Chamados,
  Servicos,
}

extension PagesExtension on Pages{
  String get value {  
    switch(this){
      case Pages.OpenChat:
        return "Chat";
      case Pages.Chamados:
        return "Chamados";
      case Pages.Servicos:
        return "Serviços";
    }
  }

  String get router{
        switch(this){
      case Pages.OpenChat:
        return "openChat";
      case Pages.Chamados:
        return "chamados";
      case Pages.Servicos:
        return "servicos";
    }
  }
}