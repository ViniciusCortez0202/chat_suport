import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:projeto_chat_suporte/app/modules/open_chats/models/open_chat_model.dart';

import '../openChats_store.dart';



class ChatsWidget extends StatelessWidget {

  final OpenChatsStore controller;

  ChatsWidget(this.controller);

  @override
  Widget build(BuildContext context) {
    List<OpenChatModel> list = controller.chatList;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: (){

            },
            child: Observer(              
              builder: (_) {
                return list.isEmpty ? Center(child: CircularProgressIndicator(),) : Container(
                    margin: EdgeInsets.only(top: 15, bottom: 5),
                    height: 100,                    
                    decoration: BoxDecoration(
                      color: list[index].isReader ? Colors.white : Color(0XFFFCD3D1),
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
                                  list[index].callModel.img),
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
                                      list[index].lasMessage,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF977f7d)),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      list[index].callModel.motivo,
                                      style: TextStyle(color: Colors.blueGrey[500]),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      list[index].callModel.service,
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
