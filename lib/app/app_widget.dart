import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/services/sockets/socket_connection.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Modular.get<SocketConnection>().createSocket();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat de Chamados',      
      theme: ThemeData(
        primaryColor: Color(0xFFf23b1a),
        accentColor: Color(0xFFFEE9E8),            
        backgroundColor: Color(0xFFFEE9E8),
        scaffoldBackgroundColor: Color(0xFFfef2f1),
      ),      
      initialRoute: "/home",
    ).modular();
  }
}
