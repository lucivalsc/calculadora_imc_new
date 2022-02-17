import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'imc_store.g.dart';

class ImcStore = _ImcStoreBase with _$ImcStore;

abstract class _ImcStoreBase with Store {
  @observable
  double? peso;

  @observable
  double? altura;

  @observable
  double? resultado;

  @observable
  String? mensagem = '';

  @observable
  Image? imagem;

  @observable
  Color? corIMC;

  //IMC = peso / (altura x altura)
  @action
  calcular() {
    if (peso != null && altura != null) {
      var valor = (peso! / (altura! * altura!)).toStringAsFixed(2);
      alternarResultado(valor);
      getImagem(valor);
      return resultado = double.parse(valor);
    }
  }

  alternarResultado(String valor) {
    if (valor.isNotEmpty) {
      double _resultado = double.parse(valor);
      if (_resultado < 18.5) {
        mensagem = 'Abaixo do peso';
      } else if (_resultado >= 18.5 && _resultado <= 24.9) {
        mensagem = 'Peso normal';
      }
      if (_resultado >= 25 && _resultado <= 29.9) {
        mensagem = 'Sobrepeso';
      }
      if (_resultado >= 30 && _resultado <= 34.9) {
        mensagem = 'Obesidade grau 1';
      }
      if (_resultado >= 35 && _resultado < 39.9) {
        mensagem = 'Obesidade grau 2';
      }
      if (_resultado > 40) {
        mensagem = 'Obesidade grau 3';
      }
    } else {
      mensagem = '';
    }
  }

  getImagem(String valor) {
    if (valor.isNotEmpty) {
      double _resultado = double.parse(valor);
      if (_resultado < 18.5) {
        corIMC = const Color.fromRGBO(33, 166, 243, 1);
        imagem = Image.asset('imagens/1.jpg');
      } else if (_resultado >= 18.5 && _resultado <= 24.9) {
        corIMC = const Color.fromRGBO(64, 188, 102, 1);
        imagem = Image.asset('imagens/2.jpg');
      } else if (_resultado > 25) {
        corIMC = const Color.fromRGBO(254, 83, 73, 1);
        imagem = Image.asset('imagens/3.jpg');
      }
    }
  }
}
/*
Tabela de resultados - IMC
O IMC pode trazer os seguintes resultados:

IMC	Resultado
Menos do que 18,5	Abaixo do peso
Entre 18,5 e 24,9	Peso normal
Entre 25 e 29,9	Sobrepeso
Entre 30 e 34,9	Obesidade grau 1
Entre 35 e 39,9	Obesidade grau 2
Mais do que 40	Obesidade grau 3
*/
