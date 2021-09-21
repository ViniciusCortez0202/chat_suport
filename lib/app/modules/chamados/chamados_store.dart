import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/repositories/novos_chamados_repository.dart';
import 'package:projeto_chat_suporte/app/modules/model/baseChamados.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';

part 'chamados_store.g.dart';

class ChamadosStore = _ChamadosStoreBase with _$ChamadosStore;
abstract class _ChamadosStoreBase with Store {

  BaseChamados chamados = Modular.get<BaseChamados>();
  
  @observable
  List<CallModel> calls = [];

  @observable
  ObservableFuture<List<CallModel>> asyncCall = ObservableFuture.value([]);

  @action
  Future<void> getList() async {
    var repository = Modular.get<NovosChamadosRepository>();
    asyncCall = ObservableFuture(repository.getCalls());
    calls = await asyncCall;
    //calls = chamados.calls().asObservable();
  }


}