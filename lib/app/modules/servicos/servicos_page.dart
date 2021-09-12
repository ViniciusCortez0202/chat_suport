import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_page.dart';
import 'package:projeto_chat_suporte/app/modules/model/service_contrato.dart';
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
    List<Contrato> list = controller.contrato;

    return Scaffold(
      appBar: AppBar(
        title: Modular.get<AppBarPage>(),
      ),     
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) {
          return Container(
            height: 75,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            alignment: Alignment.center,
            child: ListTile(
              onTap: (){
                Modular.to.pushNamed('/servicos/descriptionService', arguments: Contrato(idService: index, serviceName: list[index].serviceName, dataContrato: "", isContrato: list[index].isContrato));
              },
              title: Text(
                list[index].serviceName,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  list[index].isContrato ? Icon(Icons.check, color: Colors.green, size: 30) : Icon(Icons.close, color: Colors.red, size: 30,),
                  list[index].isContrato ? Text(list[index].dataContrato, style: TextStyle(fontSize: 10,)) : SizedBox.shrink()
                ],                
              ),
            ),
          );
        },
      ),
    ),
    );
  }
}
