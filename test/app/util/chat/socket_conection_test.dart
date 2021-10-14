import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/util/chat/socket_conection_info.dart';

void main(){

  test('url sintaxe', (){
    expect(true, RegExp(r'(http|https)://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?').hasMatch(SocketConectionInfo.local));
  });

}