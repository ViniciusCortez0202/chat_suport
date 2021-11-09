import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/shared/messages_chat/received_messages_store.dart';

import 'model/messageModel.dart';

part 'chat_store.g.dart';

class ChatStore = _ChatStoreBase with _$ChatStore;
abstract class _ChatStoreBase with Store {

    @observable
    ObservableList<MessageModel> messages = ObservableList<MessageModel>();

    @action
    recieveMessage(MessageModel message){
      messages.insert(0, message);
    }

    @action
    getAllMessages(String idCall){
      ReceivedMessagesStore allMessages = Modular.get<ReceivedMessagesStore>();
      this.messages.addAll(allMessages.getMessagesOfCall(idCall));
      
      reaction((_) => allMessages.messages, (value){
        print(value);
      });
    }
}