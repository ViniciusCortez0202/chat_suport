import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonNewCall extends StatelessWidget {
  final controller;
  const ButtonNewCall({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ElevatedButton(
          onPressed: () {
            Modular.to
                .pushNamed('/chamados/newCall')
                .whenComplete(controller.getList);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Novo Chamado",
              style: TextStyle(fontSize: 20),
            ),
          ),
          style:
              ElevatedButton.styleFrom(primary: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
