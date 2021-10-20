import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/services_mode.dart';
import 'package:projeto_chat_suporte/app/modules/servicos/pages/description/description_controller.dart';

class DescriptionPage extends StatefulWidget {
  final ServicesModel contrato;
  const DescriptionPage({Key? key, required this.contrato}) : super(key: key);
  @override
  DescriptionPageState createState() => DescriptionPageState();
}

class DescriptionPageState extends State<DescriptionPage> {
  DescriptionController controller = DescriptionController();

  @override
  Widget build(BuildContext context) {
    ServicesModel contrato = widget.contrato;

    controller.searchDescrption(context, contrato.idService);
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          title: Text(contrato.serviceName),
          actions: [
            contrato.isHire
                ? Icon(Icons.check, color: Colors.green, size: 30)
                : Icon(Icons.close,
                    color: Theme.of(context).accentColor, size: 30),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Observer(
          builder: (_) {
            if (controller.serviceFuture != null &&
                controller.serviceFuture?.status == FutureStatus.pending) {
              return Center(child: CircularProgressIndicator());
            } else if (controller.serviceFuture?.status ==
                FutureStatus.fulfilled) {
              ServicesModel service = controller.service!;
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      service.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 25, color: Colors.blueGrey),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Valor: ${service.cost}",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Contratar Serviço",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                  )
                ],
              );
            }
            return Container();
          },
        ));
  }
}
