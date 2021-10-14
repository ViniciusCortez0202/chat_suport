import 'package:flutter/material.dart';

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

Status getStatusFromString(String sts) {
  Status stss = Status.Open;
  for (Status item in Status.values) {
    if (item.value == sts) {
      stss = item;
      break;
    }
  }
  return stss;
}
