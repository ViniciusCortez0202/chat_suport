import 'package:projeto_chat_suporte/app/util/enterprise/entrerprise_data.dart';

import 'service_call.dart';

class BaseChamados {
  List<CallModel> enterpriseList = [
    CallModel(
        idCall: "1",
        date: "12/09/2021",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "SEM CONEXAO COM INTERNET",
        service: "INFRAESTRUTURA",
        status: Status.Open,
        ),
    CallModel(
        idCall: "2",
        date: "12/08/2021",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "falta de cfop em nota fiscal",
        service: "ARPA",
        status: Status.Close
        ),
    CallModel(
        idCall: "3",
        date: "03/09/2021",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "bkp inconsistente",
        service: "BACKUP",
        status: Status.Open,
        ),
    CallModel(
        idCall: "4",
        date: "01/01/2021",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "Pdv NÃO ABRE",
        service: "ARPA",
        status: Status.Activate
        ),
    CallModel(
        idCall: "5",
        date: "27/08/2021",
        img:
            "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
        motivo: "NÃO CONSIGO ENVIAR BACKUP",
        service: "BACKUP",
        status: Status.Activate
        ),
  ];


  List<CallModel> calls(){
    var id = EntrerpresiData.id;
    enterpriseList.sort((a, b) => a.status == Status.Open ? -1 : a.status == Status.Activate ? -1 : 1);
    return enterpriseList;
  }

  List<CallModel> chats(){
    var id = EntrerpresiData.id;
    enterpriseList.sort((a, b) => a.date.compareTo(b.date));
    return enterpriseList.where((element) => element.status == Status.Activate ? true : false).toList();
  }

}


