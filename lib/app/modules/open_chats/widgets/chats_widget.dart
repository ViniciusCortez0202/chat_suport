import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:projeto_chat_suporte/app/modules/model/call_enteprise_chat.dart';

import '../openChats_store.dart';



class ChatsWidget extends StatelessWidget {

  final OpenChatsStore controller;

  ChatsWidget(this.controller);

  @override
  Widget build(BuildContext context) {
    List<EntepriseChat> list = controller.enterpriseList;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){
              controller.readerList(list[index]);
            },
            child: Observer(              
              builder: (_) {
                return Container(
                    margin: EdgeInsets.only(top: 15, bottom: 5),
                    height: 100,
                    decoration: BoxDecoration(
                      color: list[index].messageReader == true ? Colors.white : Color(0XFFFCD3D1),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  list[index].img),
                              radius: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      list[index].enterprise,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF977f7d)),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      list[index].motivo,
                                      style: TextStyle(color: Colors.blueGrey[500]),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      list[index].service,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ));
              }
            ),
          );
        },
      ),
    );
  }
}
