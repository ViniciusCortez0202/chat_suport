// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appBar_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppBarStore on _AppBarStoreBase, Store {
  final _$selectedIndexAtom = Atom(name: '_AppBarStoreBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$_AppBarStoreBaseActionController =
      ActionController(name: '_AppBarStoreBase');

  @override
  dynamic changePage(Pages index, int position) {
    final _$actionInfo = _$_AppBarStoreBaseActionController.startAction(
        name: '_AppBarStoreBase.changePage');
    try {
      return super.changePage(index, position);
    } finally {
      _$_AppBarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex}
    ''';
  }
}
