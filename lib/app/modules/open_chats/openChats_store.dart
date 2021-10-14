import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/open_chats/models/BaseOpenChatModel.dart';
import 'package:projeto_chat_suporte/app/modules/open_chats/models/open_chat_model.dart';

part 'openChats_store.g.dart';

class OpenChatsStore = _OpenChatsStoreBase with _$OpenChatsStore;

abstract class _OpenChatsStoreBase with Store {
  //var chamados = BaseOpenChat();

  @observable
  ObservableList<OpenChatModel> chatList = ObservableList<OpenChatModel>();

  @action
  getList() {
    //chatList = chamados.openChats().asObservable();
  }
}
