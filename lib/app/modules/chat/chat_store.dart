import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/user_model.dart';

import 'model/messageModel.dart';

part 'chat_store.g.dart';

class ChatStore = _ChatStoreBase with _$ChatStore;
abstract class _ChatStoreBase with Store {

    @observable
    ObservableList<Message> messages = ObservableList<Message>();


    @action
    recieveMessage(Message message){
      messages.insert(0, message);
    }
}