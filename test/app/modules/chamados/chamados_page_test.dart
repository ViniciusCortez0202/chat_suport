import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/app_module.dart';
import 'package:projeto_chat_suporte/app/app_widget.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/appBar_page.dart';
import 'package:projeto_chat_suporte/app/modules/appBar/widgets/list_pages_widget.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/chamados_module.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/chamados_page.dart';
import 'package:projeto_chat_suporte/app/modules/chamados/chamados_store.dart';

void main() {
  testWidgets('Funcionamento da tela de chamados', (WidgetTester tester) async {
    await tester
        .pumpWidget(ModularApp(module: AppModule(), child: AppWidget()));
    await tester.pump();

    final bar = find.byType(ListView);
    expect(bar, findsOneWidget);

    final call = find.text("Chamados");

    expect(call, findsOneWidget);

    await tester.tap(call);
    await tester.runAsync(() async {
      await tester.pump();
    });
    final elevatedB = find.byType(ElevatedButton);
    expect(elevatedB, findsOneWidget);


  });
}
