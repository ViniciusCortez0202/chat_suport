import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/baseChamados.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';

part 'chamados_store.g.dart';

class ChamadosStore = _ChamadosStoreBase with _$ChamadosStore;
abstract class _ChamadosStoreBase with Store {

  BaseChamados chamados = Modular.get<BaseChamados>();

  @observable
  ObservableList<CallModel> calls = ObservableList<CallModel>();

  getList(){
    calls = chamados.calls().asObservable();
  }


}