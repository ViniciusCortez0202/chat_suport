import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_contrato.dart';

part 'servicos_store.g.dart';

class ServicosStore = _ServicosStoreBase with _$ServicosStore;
abstract class _ServicosStoreBase with Store {
  

  List<Contrato> contrato = [
    Contrato(idService: 1, serviceName: "ARPA", isContrato: true, dataContrato: "28/07/2022"),
    Contrato(idService: 1, serviceName: "INFRAESTRUTURA", isContrato: false, dataContrato: ""),
    Contrato(idService: 1, serviceName: "BACKUP", isContrato: false, dataContrato: ""),
  ];
}