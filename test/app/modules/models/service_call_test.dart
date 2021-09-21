import 'dart:convert';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';

void main() {
  late CallModel call;

  setUp(() {
    call = CallModel(
      idCall: '001',
      date: '21/05/2021',
      descricao: "o servidor esta desligando",
      motivo: "servidor desligando",
      status: Status.Open,
      service: 'Infra',
    );
  });

  group("convesoes", () {
    test('fromJson', () {
      var json = {
        'id': "001",
        'data': '21/05/2021',
        'descricao': "o servidor esta desligando",
        'motivo': "servidor desligando",
        'status': 'Aberto',
        'service': 'Infra',
      };

      expect(call.idCall, CallModel.fromJson(json).idCall);
    });

    test('toJson', () {
      var json = {
        'id': "001",
        'data': '21/05/2021',
        'descricao': "o servidor esta desligando",
        'motivo': "servidor desligando",
        'status': 'Aberto',
        'service': 'Infra',
      };

      expect(json['id'], call.toJson()['idCall']);
    });

    test('FromJson with status', () {
      var json = {
        'id': "001",
        'data': '21/05/2021',
        'descricao': "o servidor esta desligando",
        'motivo': "servidor desligando",
        'status': 'Aberto',
        'service': 'Infra',
      };

      expect(call.status, CallModel.fromJson(json).status);
    });
  });

  group('status from string', () {
    test('Aberto', () {
      String value = 'Aberto';
      expect(Status.Open, CallModel.getStatusFromString(value));
    });
    test('Fechado', () {
      String value = 'Fechado';
      expect(Status.Close, CallModel.getStatusFromString(value));
    });
    test('Ativo', () {
      String value = 'Ativo';
      expect(Status.Activate, CallModel.getStatusFromString(value));
    });

    test('Status inexistene', () {
      expect(Status.Open, CallModel.getStatusFromString("erro"));
    });
  });

  test('Change Status', () {
    call.status = CallModel.getStatusFromString('Fechado');
    expect(call.status, Status.Close);
  });

}
