// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DescriptionController on _DescriptionControllerBase, Store {
  final _$serviceAtom = Atom(name: '_DescriptionControllerBase.service');

  @override
  dynamic get service {
    _$serviceAtom.reportRead();
    return super.service;
  }

  @override
  set service(dynamic value) {
    _$serviceAtom.reportWrite(value, super.service, () {
      super.service = value;
    });
  }

  final _$_DescriptionControllerBaseActionController =
      ActionController(name: '_DescriptionControllerBase');

  @override
  dynamic searchDescrption(int idService) {
    final _$actionInfo = _$_DescriptionControllerBaseActionController
        .startAction(name: '_DescriptionControllerBase.searchDescrption');
    try {
      return super.searchDescrption(idService);
    } finally {
      _$_DescriptionControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
service: ${service}
    ''';
  }
}
