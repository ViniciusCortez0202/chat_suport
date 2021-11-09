import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/chat/model/messageModel.dart';

part 'received_messages_store.g.dart';

class ReceivedMessagesStore = _ReceivedMessagesStoreBase
    with _$ReceivedMessagesStore;

abstract class _ReceivedMessagesStoreBase with Store {
  @observable
  ObservableList<MessageModel> messages = ObservableList<MessageModel>();

  @action
  void putMessages(MessageModel message) {
    messages.add(message);
  }

  Iterable<MessageModel> getMessagesOfCall(String idCall){
    return messages.where((message) => message.idCall == idCall);
  }
}
