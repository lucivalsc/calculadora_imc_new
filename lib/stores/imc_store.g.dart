// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ImcStore on _ImcStoreBase, Store {
  final _$pesoAtom = Atom(name: '_ImcStoreBase.peso');

  @override
  double? get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(double? value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  final _$alturaAtom = Atom(name: '_ImcStoreBase.altura');

  @override
  double? get altura {
    _$alturaAtom.reportRead();
    return super.altura;
  }

  @override
  set altura(double? value) {
    _$alturaAtom.reportWrite(value, super.altura, () {
      super.altura = value;
    });
  }

  final _$resultadoAtom = Atom(name: '_ImcStoreBase.resultado');

  @override
  double? get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(double? value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  final _$mensagemAtom = Atom(name: '_ImcStoreBase.mensagem');

  @override
  String? get mensagem {
    _$mensagemAtom.reportRead();
    return super.mensagem;
  }

  @override
  set mensagem(String? value) {
    _$mensagemAtom.reportWrite(value, super.mensagem, () {
      super.mensagem = value;
    });
  }

  final _$_ImcStoreBaseActionController =
      ActionController(name: '_ImcStoreBase');

  @override
  dynamic calcular() {
    final _$actionInfo = _$_ImcStoreBaseActionController.startAction(
        name: '_ImcStoreBase.calcular');
    try {
      return super.calcular();
    } finally {
      _$_ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic alternarResultado(String valor) {
    final _$actionInfo = _$_ImcStoreBaseActionController.startAction(
        name: '_ImcStoreBase.alternarResultado');
    try {
      return super.alternarResultado(valor);
    } finally {
      _$_ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
peso: ${peso},
altura: ${altura},
resultado: ${resultado},
mensagem: ${mensagem}
    ''';
  }
}
