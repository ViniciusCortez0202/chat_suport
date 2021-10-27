import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_chat_suporte/app/modules/model/enums/status_enum.dart';

void main() {
  test("status enum value", () {
    expect(Status.Activate.value, allOf([isA<String>(), "Ativo"]));
  });
  test("using extension from status type color", () {
    expect(Status.Activate.types, allOf([isA<MaterialColor>(), Colors.green]));
  });
}
