import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_page.dart';


import 'home_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  HomeStore controller = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Modular.get<AppBarPage>()
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
          Modular.to.navigate('/home/descricaoservico');
        },
        child: Icon(Icons.search),
      ),
    );
  }
}
