// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chamados_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChamadosStore on _ChamadosStoreBase, Store {
  final _$callsAtom = Atom(name: '_ChamadosStoreBase.calls');

  @override
  ObservableList<CallModel> get calls {
    _$callsAtom.reportRead();
    return super.calls;
  }

  @override
  set calls(ObservableList<CallModel> value) {
    _$callsAtom.reportWrite(value, super.calls, () {
      super.calls = value;
    });
  }

  final _$_ChamadosStoreBaseActionController =
      ActionController(name: '_ChamadosStoreBase');

  @override
  dynamic getList() {
    final _$actionInfo = _$_ChamadosStoreBaseActionController.startAction(
        name: '_ChamadosStoreBase.getList');
    try {
      return super.getList();
    } finally {
      _$_ChamadosStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
calls: ${calls}
    ''';
  }
}
