import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/widgets/calls_description_widget.dart';

class CallsWidget extends StatelessWidget {
  final controller;
  const CallsWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(
            builder: (_) {
              return controller.asyncCall.status == FutureStatus.pending
                  ? CircularProgressIndicator()
                  : Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: ListView.builder(
                          itemCount: controller.calls.length,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {
                                Modular.to
                                    .pushNamed("/chat",
                                        arguments: controller.calls[index])
                                    .whenComplete(controller.getList);
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
                                    child: CallsDescription(
                                      call: controller.calls[index],
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
/*

    */ 