import 'package:calculadora_imc/componentes/texto_widget.dart';
import 'package:calculadora_imc/stores/imc_store.dart';
import 'package:calculadora_imc/temas/cores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  ImcStore store = ImcStore();
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
          builder: (_) => Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const Text(
                        '''O IMC (Índice de Massa Corporal) é uma ferramenta usada para detectar casos de obesidade ou desnutrição, principalmente em estudos que envolvem grandes populações.'''),
                    TextoWidget(
                      onChanged: (String value) {
                        if (value.isNotEmpty) {
                          store.peso = double.parse(value);
                          store.calcular();
                        }
                      },
                      texto: 'Peso',
                      controller: _peso,
                      textoHint: 'Digite seu peso',
                    ),
                    TextoWidget(
                      onChanged: (String value) {
                        if (value.isNotEmpty) {
                          store.altura = double.parse(value);
                          store.calcular();
                        }
                      },
                      texto: 'Altura',
                      controller: _altura,
                      textoHint: 'Digite sua altura',
                    ),
                    const SizedBox(height: 25),
                    const Center(
                      child: Text(
                        'Você está',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Text(
                        // 'SAUDÁVEL: ${store.resultado}',
                        '${store.mensagem}',
                        style: TextStyle(
                          color: Cores.corPadrao,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Observer(
        builder: (_) => Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: SizedBox(
                child: store.imagem,
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Text('IMC'),
                    Text(
                      '${store.resultado}',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: store.corIMC,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
