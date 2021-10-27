import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_page.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/chamados_store.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/widgets/button_new_call_widget.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/widgets/calls_widget.dart';
import '../model/enums/status_enum.dart';

class ChamadosPage extends StatefulWidget {
  final String title;
  const ChamadosPage({Key? key, this.title = 'ChamadosPage'}) : super(key: key);
  @override
  ChamadosPageState createState() => ChamadosPageState();
}

class ChamadosPageState extends State<ChamadosPage> {
  ChamadosStore controller = Modular.get<ChamadosStore>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getList();
  }

  @override
  Widget build(BuildContext context) {
    //List<CallModel> list = controller.calls;

    return Scaffold(
      appBar: AppBar(
        title: Modular.get<AppBarPage>(),
      ),
      body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonNewCall(controller: controller),
              Expanded(child: CallsWidget(controller: controller))
            ],
          )),
    );
  }
}
