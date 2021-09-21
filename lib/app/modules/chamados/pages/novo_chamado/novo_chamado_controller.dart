import 'package:flutter/cupertino.dart';

class NovoChamadoController{

  final TextEditingController motivo = TextEditingController();
  final TextEditingController descricao = TextEditingController();
  

  createNewCall(String servico){
    print(servico + " " + motivo.text + " " + descricao.text);
  }

}