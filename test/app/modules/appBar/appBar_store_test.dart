import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_store.dart';
 
void main() {
  late AppBarStore store;

  setUpAll(() {
    store = AppBarStore();
  });

  test('deve retornar página e index selecionado', () {
    store.changePage(store.pages[1], 1);

    expect(store.selectedIndex, 1);
  });
}