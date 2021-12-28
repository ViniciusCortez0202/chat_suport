import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/repositories/novos_chamados_repository.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_call.dart';
import 'package:projeto_chat_suporte/app/modules/model/users/client_user.dart';
import 'package:projeto_chat_suporte/app/modules/model/users/suport_user.dart';
import 'package:projeto_chat_suporte/app/util/indicators/snack_bar.dart';
import '../../../model/enums/status_enum.dart';

class NovoChamadoController {
  final TextEditingController motivo = TextEditingController();
  final TextEditingController descricao = TextEditingController();
  final NovosChamadosRepository repository;

  NovoChamadoController({required this.repository});

  createNewCall(String servico, context) async {
    ClientModel clientModel = ClientModel(
      idClient: "51618",
      name: "Cavalcante",
      profilePicture: "foto",
    );

    CallModel call = CallModel(
      token: "",
      client: clientModel,
      imgs: [],
      idCall: "",
      status: Status.Open,
      title: motivo.text,
      description: descricao.text,
      dateOpen: "",      
      job: servico,
    );
    
    try {
      var response = await repository.sendCall(call);

      if (response) {
        Modular.to.popUntil(ModalRoute.withName('/chamados'));
      }
    } catch (e) {
      Modular.to.pop();
      showSnackbarMessage(context, "Não foi possível abrir chamado, tente novamente mais tarde...", Colors.black);
    }
  }
  
}