import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/services_mode.dart';
import 'package:projeto_chat_suporte/app/modules/servicos/repositories/jobs_repository.dart';
import 'package:projeto_chat_suporte/app/util/enterprise/entrerprise_data.dart';
import 'package:projeto_chat_suporte/app/util/indicators/snack_bar.dart';

part 'servicos_store.g.dart';

class ServicosStore = _ServicosStoreBase with _$ServicosStore;
abstract class _ServicosStoreBase with Store {

  @observable
  ObservableFuture<List<ServicesModel>> servicesFuture = ObservableFuture.value([]);

  @observable
  List<ServicesModel> services = [];


  @action
  jobs(context) async{
    JobsRespository respository = JobsRespository(Modular.get<Dio>());

    try {
      servicesFuture = ObservableFuture(respository.getAllJobs(EntrerpresiData.id, ""));
      services  = await servicesFuture;
    } catch (e) {
      print(e);
      showSnackbarMessage(context, "Não foi possível obter os serviços, tente novamente mais tarde...", Colors.black);
    }
  }

}