import 'dart:convert';

import 'package:projeto_chat_suporte/app/modules/model/users/client_user.dart';
import 'package:projeto_chat_suporte/app/modules/model/users/suport_user.dart';
import 'package:projeto_chat_suporte/app/util/enterprise/entrerprise_data.dart';

import 'enums/status_enum.dart';

class CallModel {
  String idCall;
  late ClientModel client;
  late SuportModel suport;
  List<String> imgs;
  String title;
  String job;
  Status status;
  String dateOpen;
  late String dateClose;
  String description;
  String token;

  CallModel({
    required this.token,
    required this.idCall,
    required this.title,
    required this.imgs,
    required this.job,
    required this.status,
    required this.dateOpen,
    required this.description,
  });

  Map toJson() {
    return {
      'codeEnterprise': EntrerpresiData.id,
      'idCall': idCall,
      'client': client.toJson(),
      'suport': suport.toJson(),
      'title': title,
      'job': job,
      'description': description,
      'status': Status.Open.value,
      'date_open': dateOpen,
      'date_close': dateClose,
      'token': token
    };
  }

  factory CallModel.fromJson(json) {
     var call =  CallModel(
      token: json['token'],
      idCall: json['idCall'],
      title: json['title'],
      job: json['job'],      
      description: json['description'],
      // imgs: json['imgs'] as List<String>,
       imgs: [],
      status: getStatusFromString(json['status']),
      dateOpen: json['date_open'],
    );    
    call.client = ClientModel.fromJson(json['client']);
    call.suport = SuportModel.fromJson(json['suport']);
    call.dateClose = json['date_close'];
    return call;
  }
}
