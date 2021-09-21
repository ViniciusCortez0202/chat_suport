import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection.dart';

void main(){

  test('url sintaxe', (){
    expect(true, RegExp(r'(http|https)://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?').hasMatch(SocketConection.local));
  });

}