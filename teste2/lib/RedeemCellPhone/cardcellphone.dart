import 'package:flutter/material.dart';

class CardCellPhone extends StatelessWidget {
  final bool selecionado;
  final double valorRecarga;
  final Function() onTap;
  const CardCellPhone(
      {super.key,
      required this.valorRecarga,
      required this.selecionado,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: 149,
        height: 92,
        child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: selecionado
                    ? const Color.fromRGBO(77, 205, 212, 1)
                    : const Color.fromRGBO(220, 220, 220, 1),
                width: 1),
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 0,
          color: selecionado
              ? const Color.fromRGBO(237, 250, 251, 1)
              : const Color.fromRGBO(255, 255, 255, 1),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'R\$ ${valorRecarga.toStringAsFixed(2).replaceAll('.', ',')}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(82, 82, 82, 1),
                  fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
