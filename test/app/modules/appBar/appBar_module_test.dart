import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_module.dart';
 
void main() {

  setUpAll(() {
    initModule(AppBarModule());
  });
}