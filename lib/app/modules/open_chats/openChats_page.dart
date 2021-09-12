import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_page.dart';
import 'package:projeto_chat_suporte/app/modules/open_chats/widgets/chats_widget.dart';

import 'openChats_store.dart';

class OpenChatsPage extends StatefulWidget {
  
  @override
  OpenChatsPageState createState() => OpenChatsPageState();
}
class OpenChatsPageState extends State<OpenChatsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Modular.get<AppBarPage>(),
     ),
     body: ChatsWidget(Modular.get<OpenChatsStore>()),
    );
  }
}