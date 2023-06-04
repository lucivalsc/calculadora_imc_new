// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imc_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImcStore on _ImcStoreBase, Store {
  late final _$pesoAtom = Atom(name: '_ImcStoreBase.peso', context: context);

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

  late final _$alturaAtom =
      Atom(name: '_ImcStoreBase.altura', context: context);

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

  late final _$resultadoAtom =
      Atom(name: '_ImcStoreBase.resultado', context: context);

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

  late final _$mensagemAtom =
      Atom(name: '_ImcStoreBase.mensagem', context: context);

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

  late final _$imagemAtom =
      Atom(name: '_ImcStoreBase.imagem', context: context);

  @override
  Image? get imagem {
    _$imagemAtom.reportRead();
    return super.imagem;
  }

  @override
  set imagem(Image? value) {
    _$imagemAtom.reportWrite(value, super.imagem, () {
      super.imagem = value;
    });
  }

  late final _$corIMCAtom =
      Atom(name: '_ImcStoreBase.corIMC', context: context);

  @override
  Color? get corIMC {
    _$corIMCAtom.reportRead();
    return super.corIMC;
  }

  @override
  set corIMC(Color? value) {
    _$corIMCAtom.reportWrite(value, super.corIMC, () {
      super.corIMC = value;
    });
  }

  late final _$_ImcStoreBaseActionController =
      ActionController(name: '_ImcStoreBase', context: context);

  @override
  dynamic atualizarCalculo(String value, String type) {
    final _$actionInfo = _$_ImcStoreBaseActionController.startAction(
        name: '_ImcStoreBase.atualizarCalculo');
    try {
      return super.atualizarCalculo(value, type);
    } finally {
      _$_ImcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

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
  String toString() {
    return '''
peso: ${peso},
altura: ${altura},
resultado: ${resultado},
mensagem: ${mensagem},
imagem: ${imagem},
corIMC: ${corIMC}
    ''';
  }
}
