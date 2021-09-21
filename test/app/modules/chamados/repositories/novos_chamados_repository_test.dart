import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/repositories/novos_chamados_repository.dart';
 
void main() {
  late NovosChamadosRepository repository;

  setUpAll(() {
    repository = NovosChamadosRepository();
  });
}