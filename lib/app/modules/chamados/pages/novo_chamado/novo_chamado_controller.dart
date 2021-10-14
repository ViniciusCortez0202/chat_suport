import 'package:flutter/cupertino.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/repositories/novos_chamados_repository.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';
import '../../../model/enums/status_enum.dart';

class NovoChamadoController{

  final TextEditingController motivo = TextEditingController();
  final TextEditingController descricao = TextEditingController();
  final NovosChamadosRepository repository;

  NovoChamadoController({required this.repository});

  createNewCall(String servico)  {

    CallModel call = CallModel(token: "",  imgs: [], idCall: "", status: Status.Open, title: motivo.text, description: descricao.text, dateOpen: "", job: servico);
    repository.sendCall(call);
  }

}