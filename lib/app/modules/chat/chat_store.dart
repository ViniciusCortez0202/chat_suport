import 'package:mobx/mobx.dart';

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