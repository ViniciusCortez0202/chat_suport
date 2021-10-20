// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chamados_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChamadosStore on _ChamadosStoreBase, Store {
  final _$callsAtom = Atom(name: '_ChamadosStoreBase.calls');

  @override
  List<CallModel> get calls {
    _$callsAtom.reportRead();
    return super.calls;
  }

  @override
  set calls(List<CallModel> value) {
    _$callsAtom.reportWrite(value, super.calls, () {
      super.calls = value;
    });
  }

  final _$asyncCallAtom = Atom(name: '_ChamadosStoreBase.asyncCall');

  @override
  ObservableFuture<List<CallModel>> get asyncCall {
    _$asyncCallAtom.reportRead();
    return super.asyncCall;
  }

  @override
  set asyncCall(ObservableFuture<List<CallModel>> value) {
    _$asyncCallAtom.reportWrite(value, super.asyncCall, () {
      super.asyncCall = value;
    });
  }

  final _$getListAsyncAction = AsyncAction('_ChamadosStoreBase.getList');

  @override
  Future<void> getList() {
    return _$getListAsyncAction.run(() => super.getList());
  }

  @override
  String toString() {
    return '''
calls: ${calls},
asyncCall: ${asyncCall}
    ''';
  }
}
