import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_contrato.dart';
import 'package:projeto_chat_suporte/app/modules/servicos/pages/description/description_controller.dart';

class DescriptionPage extends StatefulWidget {
  final Contrato contrato;
  const DescriptionPage({Key? key, required this.contrato}) : super(key: key);
  @override
  DescriptionPageState createState() => DescriptionPageState();
}
class DescriptionPageState extends State<DescriptionPage> {

  DescriptionController controller = DescriptionController();

  @override
  Widget build(BuildContext context) {
    Contrato contrato = widget.contrato;
    controller.searchDescrption(contrato.idService);
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text(contrato.serviceName),
        actions: [
          contrato.isContrato
              ? Icon(Icons.check, color: Colors.green, size: 30)
              : Icon(Icons.close,
                  color: Theme.of(context).accentColor, size: 30),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Observer(builder: (_) {
        return controller.service == null  ? CircularProgressIndicator() : Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text( controller.service.description,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 25, color: Colors.blueGrey),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Valor: ${controller.service.cost}",
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {   },
            child: Text(
              "Contratar Serviço",
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor),
          )
        ],
      );
      },)
    );
  }
}