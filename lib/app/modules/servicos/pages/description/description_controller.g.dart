// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DescriptionController on _DescriptionControllerBase, Store {
  final _$serviceAtom = Atom(name: '_DescriptionControllerBase.service');

  @override
  ServicesModel? get service {
    _$serviceAtom.reportRead();
    return super.service;
  }

  @override
  set service(ServicesModel? value) {
    _$serviceAtom.reportWrite(value, super.service, () {
      super.service = value;
    });
  }

  final _$serviceFutureAtom =
      Atom(name: '_DescriptionControllerBase.serviceFuture');

  @override
  ObservableFuture<ServicesModel>? get serviceFuture {
    _$serviceFutureAtom.reportRead();
    return super.serviceFuture;
  }

  @override
  set serviceFuture(ObservableFuture<ServicesModel>? value) {
    _$serviceFutureAtom.reportWrite(value, super.serviceFuture, () {
      super.serviceFuture = value;
    });
  }

  final _$searchDescrptionAsyncAction =
      AsyncAction('_DescriptionControllerBase.searchDescrption');

  @override
  Future searchDescrption(dynamic context, String idJob) {
    return _$searchDescrptionAsyncAction
        .run(() => super.searchDescrption(context, idJob));
  }

  @override
  String toString() {
    return '''
service: ${service},
serviceFuture: ${serviceFuture}
    ''';
  }
}
