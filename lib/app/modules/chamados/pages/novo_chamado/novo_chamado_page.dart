import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/pages/novo_chamado/novo_chamado_controller.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/repositories/novos_chamados_repository.dart';

class NovoChamadoPage extends StatefulWidget {

  @override
  NovoChamadoPageState createState() => NovoChamadoPageState();
}

class NovoChamadoPageState extends State<NovoChamadoPage> {
  NovoChamadoController controller = NovoChamadoController(repository: Modular.get<NovosChamadosRepository>());
  String dropdownValue = 'Arpa';
  String servico = "Arpa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Chamado"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: controller.motivo,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Motivo..."),
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                  servico = newValue;
                });
              },
              items: <String>['Arpa', 'Infra', 'Backup', 'Suporte']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              controller: controller.descricao,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Descrição..."),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              controller.createNewCall(servico);
            }, child: Text("Enviar"))
          ],
        ),
      ),
    );
  }
}
