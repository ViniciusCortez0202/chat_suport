// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chamados_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChamadosStore on _ChamadosStoreBase, Store {
  final _$enterpriseListAtom = Atom(name: '_ChamadosStoreBase.enterpriseList');

  @override
  ObservableList<EntepriseChat> get enterpriseList {
    _$enterpriseListAtom.reportRead();
    return super.enterpriseList;
  }

  @override
  set enterpriseList(ObservableList<EntepriseChat> value) {
    _$enterpriseListAtom.reportWrite(value, super.enterpriseList, () {
      super.enterpriseList = value;
    });
  }

  @override
  String toString() {
    return '''
enterpriseList: ${enterpriseList}
    ''';
  }
}
