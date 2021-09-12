import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/model/baseChamados.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';
import 'package:projeto_chat_suporte/app/modules/open_chats/models/open_chat_model.dart';

class BaseOpenChat{

  List<OpenChatModel> list = [];

  List<OpenChatModel> openChats(){
    List<CallModel> callList = Modular.get<BaseChamados>().chats();

    for (var item in callList) {            
      list.add(
        OpenChatModel(item, false, "Já tentou reinicar o sistema pelo servidor")
      );
    }
    return list;
  }

}