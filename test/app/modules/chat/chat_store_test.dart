import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:projeto_chat_suporte/app/app_module.dart';
import 'package:projeto_chat_suporte/app/app_widget.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_controller.dart';
import 'package:projeto_chat_suporte/app/modules/chat/chat_store.dart';
import 'package:projeto_chat_suporte/app/modules/chat/model/messageModel.dart';
import 'package:projeto_chat_suporte/app/shared/messages_chat/received_messages_store.dart';

class RecievedMessateStoreMock extends Mock implements ReceivedMessagesStore {}

void main() {
  final mockMessage = RecievedMessateStoreMock();

   List<MessageModel> messages = [
      MessageModel(
          idCall: '111',
          isMe: true,
          text: "teste 1",
          unread: false,
          time: DateTime.now().toString()),
      MessageModel(
          idCall: '111',
          isMe: false,
          text: "teste 2",
          unread: false,
          time: DateTime.now().toString()),
      MessageModel(
          idCall: '111',
          isMe: false,
          text: "teste 3",
          unread: false,
          time: DateTime.now().toString()),
      MessageModel(
          idCall: '111',
          isMe: true,
          text: "teste 4",
          unread: false,
          time: DateTime.now().toString()),
    ];

  setUp(() {
   
    // messages.forEach((element) {
    //   mockMessage.putMessages(element);
    // });


    initModule(AppModule(),
        replaceBinds: [Bind<ReceivedMessagesStore>((i) => mockMessage)]);
        
    
  });

  test('Testing message recived', () {
    ReceivedMessagesStore recieved = Modular.get<ReceivedMessagesStore>();
    when(mockMessage.getMessagesOfCall("111")).thenAnswer((_) => messages);
    // var recieved = Modular.get<ReceivedMessagesStore>();
    // print(recieved.getMessagesOfCall("111"));
    // expect(recieved.getMessagesOfCall("111"), isA<Iterable>());
  });
}
