import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
