// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicos_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ServicosStore on _ServicosStoreBase, Store {
  final _$servicesFutureAtom = Atom(name: '_ServicosStoreBase.servicesFuture');

  @override
  ObservableFuture<List<ServicesModel>> get servicesFuture {
    _$servicesFutureAtom.reportRead();
    return super.servicesFuture;
  }

  @override
  set servicesFuture(ObservableFuture<List<ServicesModel>> value) {
    _$servicesFutureAtom.reportWrite(value, super.servicesFuture, () {
      super.servicesFuture = value;
    });
  }

  final _$servicesAtom = Atom(name: '_ServicosStoreBase.services');

  @override
  List<ServicesModel> get services {
    _$servicesAtom.reportRead();
    return super.services;
  }

  @override
  set services(List<ServicesModel> value) {
    _$servicesAtom.reportWrite(value, super.services, () {
      super.services = value;
    });
  }

  final _$jobsAsyncAction = AsyncAction('_ServicosStoreBase.jobs');

  @override
  Future jobs(dynamic context) {
    return _$jobsAsyncAction.run(() => super.jobs(context));
  }

  @override
  String toString() {
    return '''
servicesFuture: ${servicesFuture},
services: ${services}
    ''';
  }
}
