import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_store.dart';

class ListPageWidget extends StatelessWidget {
    final AppBarStore controller = Modular.get<AppBarStore>();
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.pages.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {              
              controller.changePage(controller.pages[index], index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Observer(builder: (_) {
                return Text(
                  controller.pages[index].value,
                  style: TextStyle(
                    color: index == controller.selectedIndex
                        ? Colors.white
                        : Colors.white70,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
