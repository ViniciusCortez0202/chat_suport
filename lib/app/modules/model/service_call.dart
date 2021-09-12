import 'package:flutter/material.dart';

class CallModel{
  String idCall;
  String img;
  String motivo;
  String service;
  Status status;
  String date;

  CallModel({required this.idCall, required this.img, required this.motivo, required this.service, required this.status, required this.date});
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