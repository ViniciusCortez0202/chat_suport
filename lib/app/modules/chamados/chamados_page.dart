import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_page.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/chamados_store.dart';
import 'package:flutter/material.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed('/chamados/newCall').whenComplete(
                  controller.getList);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Novo Chamado",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor),
            ),
          ),
          Observer(
            builder: (_) {
              return controller.asyncCall.status == FutureStatus.pending
                  ? Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: ListView.builder(
                          itemCount: controller.calls.length,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {
                                Modular.to.pushNamed("/chat",
                                    arguments: controller.calls[index]).whenComplete(controller.getList);
                              },
                              child: Observer(builder: (_) {
                                return Container(
                                    margin: EdgeInsets.only(top: 15, bottom: 5),
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFFCD3D1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 5,
                                            ),
                                            CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  controller.calls[index].suport.profilePicture),
                                              radius: 30,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.70,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      controller
                                                          .calls[index].title,
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color(
                                                              0xFF977f7d)),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Text(
                                                      controller
                                                          .calls[index].job,
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blueGrey[500]),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    Text(
                                                      controller
                                                          .calls[index].dateOpen,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.circle,
                                              color: controller
                                                  .calls[index].status.types,
                                            )
                                          ],
                                        )
                                      ],
                                    ));
                              }),
                            );
                          },
                        ),
                      ),
                    );
            },
          )
        ],
      ),
    );
  }
}
