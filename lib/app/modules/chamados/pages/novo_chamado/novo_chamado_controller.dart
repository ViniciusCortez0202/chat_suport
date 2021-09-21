import 'package:flutter/cupertino.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/repositories/novos_chamados_repository.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';

class NovoChamadoController{

  final TextEditingController motivo = TextEditingController();
  final TextEditingController descricao = TextEditingController();
  final NovosChamadosRepository repository;

  NovoChamadoController({required this.repository});

  createNewCall(String servico)  {

    CallModel call = CallModel(idCall: "", status: Status.Open, motivo: motivo.text, descricao: descricao.text, date: "", img: "", service: servico);
    repository.sendCall(call);
  }

}