import 'package:brasil_fields/brasil_fields.dart';
import 'package:calculadora_imc/app/common/widgets/text_widget.dart';
import 'package:calculadora_imc/app/layers/presenter/providers/imc_store.dart';

import 'package:calculadora_imc/app/common/styles/cores.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  ImcStore store = ImcStore();
  NumberFormat formatacao =
      NumberFormat.simpleCurrency(locale: 'pt_BR', decimalDigits: 2);
  final TextEditingController _peso = TextEditingController();
  final TextEditingController _altura = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('CALCULADORA IMC'),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.info_outline,
              color: Cores.corPadrao,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Observer(
          builder: (_) => Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      const Text(
                        '''O IMC (Índice de Massa Corporal) é uma ferramenta usada para detectar casos de obesidade ou desnutrição, principalmente em estudos que envolvem grandes populações.''',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextWidget(
                        texto: 'Peso',
                        controller: _peso,
                        textoHint: 'Digite seu peso',
                        onChanged: (String value) {
                          store.atualizarCalculo(value, 'peso');
                        },
                        inputFormatters: const [],
                      ),
                      TextWidget(
                        texto: 'Altura',
                        controller: _altura,
                        textoHint: 'Digite sua altura',
                        onChanged: (String value) {
                          store.atualizarCalculo(value, 'altura');
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CentavosInputFormatter(),
                        ],
                      ),
                      const SizedBox(height: 25),
                      buildText(
                          'Você está com',
                          store.mensagem == ''
                              ? '-'
                              : store.mensagem.toString()),
                      buildText(
                          'Seu IMC',
                          formatacao
                              .format(store.resultado ?? 0)
                              .replaceAll('R\$', '')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildText(String title, String subTitle) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          subTitle,
          style: TextStyle(
            color: Cores.corPadrao,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ],
    );
  }
}
