import 'package:flutter/material.dart';
import 'package:projeto_chat_suporte/app/util/enterprise/entrerprise_data.dart';

class CallModel {
  String idCall;
  String img;
  String motivo;
  String service;
  Status status;
  String date;
  String descricao;

  CallModel(
      {required this.idCall,
      this.img =
          "https://pbs.twimg.com/profile_images/882809436930285570/fhwvnEwg.jpg",
      required this.motivo,
      required this.service,
      required this.status,
      required this.date,
      required this.descricao});

  Map toJson() {
    return {
      'entepriseId': EntrerpresiData.id,
      'motivo': motivo,
      'servico': service,
      'descricao': descricao,
      'status': Status.Open.value
    };
  }
}

enum Status { Open, Close, Activate }

extension StatusValues on Status {
  String get value {
    switch (this) {
      case Status.Open:
        return 'Aberto';
      case Status.Close:
        return 'Fechado';
      case Status.Activate:
        return 'Ativo';
    }
  }

  Color get types {
    switch (this) {
      case Status.Open:
        return Colors.orange;
      case Status.Close:
        return Colors.red;
      case Status.Activate:
        return Colors.green;
    }
  }
}
