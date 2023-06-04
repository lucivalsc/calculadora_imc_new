import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:calculadora_imc/app/common/styles/cores.dart';

class TextWidget extends StatelessWidget {
  final String texto;
  final String textoHint;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  const TextWidget({
    Key? key,
    required this.texto,
    required this.textoHint,
    required this.controller,
    this.onChanged,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          SizedBox(
            width: 45,
            child: Text(
              texto,
              style: TextStyle(
                color: Cores.corPadrao,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 0,
                    offset: const Offset(-2, 1),
                  ),
                ],
              ),
              child: TextField(
                onChanged: onChanged,
                keyboardType: TextInputType.number,
                controller: controller,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: textoHint,
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
                inputFormatters: inputFormatters,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
