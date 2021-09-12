import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/call_enteprise_chat.dart';

part 'chamados_store.g.dart';

class ChamadosStore = _ChamadosStoreBase with _$ChamadosStore;
abstract class _ChamadosStoreBase with Store {

  @observable
  ObservableList<EntepriseChat> enterpriseList = [
    EntepriseChat(idCall: "1",
        enterprise: "CalçadosOnline",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "SEM CONEXAO COM INTERNET",
        service: "INFRAESTRUTURA"),
        EntepriseChat(idCall: "2",
        enterprise: "TECH Informatica",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "falta de cfop em nota fiscal",
        service: "ARPA"),
        EntepriseChat(idCall: "3",
        enterprise: "Alimentos & CIA",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "bkp inconsistente",
        service: "BACKUP"),
        EntepriseChat(idCall: "4",
        enterprise: "TRASPORTADORA BRASIL",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "Pdv NÃO ABRE",
        service: "ARPA"),
        EntepriseChat(idCall: "5",
        enterprise: "MAIS VC BELEZA",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "NÃO CONSIGO ENVIAR BACKUP",
        service: "BACKUP"),
  ].asObservable();


}