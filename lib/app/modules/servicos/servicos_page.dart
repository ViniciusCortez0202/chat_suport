import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_page.dart';
import 'package:projeto_chat_suporte/app/modules/model/services_mode.dart';
import 'package:projeto_chat_suporte/app/modules/servicos/servicos_store.dart';
import 'package:flutter/material.dart';

class ServicosPage extends StatefulWidget {
  final String title;
  const ServicosPage({Key? key, this.title = 'ServicosPage'}) : super(key: key);
  @override
  ServicosPageState createState() => ServicosPageState();
}

class ServicosPageState extends State<ServicosPage> {
  final ServicosStore controller = Modular.get<ServicosStore>();

  @override
  Widget build(BuildContext context) {
    controller.jobs(context);

    return Scaffold(
        appBar: AppBar(
          title: Modular.get<AppBarPage>(),
        ),
        body: Observer(builder: (_) {
          List<ServicesModel> list = controller.services;
          return controller.servicesFuture.status == FutureStatus.pending
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 75,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        alignment: Alignment.center,
                        child: ListTile(
                          onTap: () {
                            Modular.to.pushNamed('/servicos/descriptionService',
                                arguments: ServicesModel(
                                    idService: index.toString(),
                                    serviceName: list[index].serviceName,
                                    dateHire: "",
                                    isHire: list[index].isHire,
                                    cost: "",
                                    description: ""));
                          },
                          title: Text(
                            list[index].serviceName,
                            style:
                                TextStyle(fontSize: 18, color: Colors.blueGrey),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              list[index].isHire
                                  ? Icon(Icons.check,
                                      color: Colors.green, size: 30)
                                  : Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                              list[index].isHire
                                  ? Text(list[index].dateHire,
                                      style: TextStyle(
                                        fontSize: 10,
                                      ))
                                  : SizedBox.shrink()
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
        }));
  }
}
