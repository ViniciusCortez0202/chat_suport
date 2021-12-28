import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/services/sockets/socket_connection.dart';

class AppWidget extends StatelessWidget {
  static late String socketid;

  @override
  Widget build(BuildContext context) {
    Modular.get<SocketConnection>().createSocket();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat de Chamados',      
      theme: ThemeData(
        primaryColor: Color(0xFFf23b1a),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFFf23b1a)),
        scaffoldBackgroundColor: Color(0xFFfef2f1),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Color(0xFFf23b1a))
        // primaryColor: Color(0xFFf23b1a),
        // colorScheme: ColorScheme.fromSwatch(accentColor: Color(0xFFFEE9E8), backgroundColor: Color(0xFFFEE9E8)),         
        // backgroundColor: Color(0xFFFEE9E8),
        
      ),      
      initialRoute: "/home",
    ).modular();
  }
}
