import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/services_mode.dart';
import 'package:projeto_chat_suporte/app/modules/servicos/repositories/jobs_repository.dart';
import 'package:projeto_chat_suporte/app/util/enterprise/entrerprise_data.dart';
import 'package:projeto_chat_suporte/app/util/indicators/snack_bar.dart';
part 'description_controller.g.dart';

class DescriptionController = _DescriptionControllerBase
    with _$DescriptionController;

abstract class _DescriptionControllerBase with Store {
  @observable
  ServicesModel? service;

  @observable
  ObservableFuture<ServicesModel>? serviceFuture;

  @action
  searchDescrption(context, String idJob) async {
    var repository = JobsRespository(Modular.get<Dio>());
    try {
      serviceFuture = ObservableFuture( repository.getDescriptionJob(EntrerpresiData.id, "", idJob));
      service = await serviceFuture!;
    } catch (e) {
      print(e);
      showSnackbarMessage(
          context,
          "Não foi possível acessar o serviço. tente novamente mais tarde...",
          Colors.black);
    }
  }
}
