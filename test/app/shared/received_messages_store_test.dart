import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/shared/received_messages_store.dart';
 
void main() {
  late ReceivedMessagesStore store;

  setUpAll(() {
    store = ReceivedMessagesStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}