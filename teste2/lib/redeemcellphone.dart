import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste2/cardcellphone.dart';

class RedeemCellPhone extends StatefulWidget {
  RedeemCellPhone({super.key, required this.title});

  final String title;

  @override
  State<RedeemCellPhone> createState() => _RedeemCellPhoneState();
}

class _RedeemCellPhoneState extends State<RedeemCellPhone> {
  final List<double> cardsCell = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addCards();
  }

  final double saldoUser = 40.0;

  void addCards() {
    for (double i = 10.0; i <= saldoUser; i = i + 5.0) {
      cardsCell.add(i);
    }
  }

  int indice = -1;

  void onTap(index) {
    setState(() {
      indice = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Icon(
              Icons.help_outline,
              color: Color.fromRGBO(232, 69, 46, 1),
            ),
          )
        ],
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color.fromRGBO(232, 69, 46, 1),
        ),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Qual o valor da sua recarga de celular?',
              style: TextStyle(
                color: Color.fromRGBO(57, 57, 57, 1),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromRGBO(255, 246, 244, 1), width: 5),
                borderRadius: BorderRadius.circular(4.0),
              ),
              elevation: 0,
              color: Color.fromRGBO(255, 246, 244, 1),
              child: Container(
                padding: EdgeInsets.all(8),
                child: RichText(
                  text: TextSpan(
                    text: 'Saldo disponível: ',
                    style: TextStyle(
                      color: Color.fromRGBO(57, 57, 57, 1),
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'R\$ ${saldoUser.toStringAsFixed(2).replaceAll('.', ',')}',
                        style: TextStyle(
                          color: Color.fromRGBO(57, 57, 57, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 16,
                children: List.generate(
                  cardsCell.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      bottom: 16,
                    ),
                    child: CardCellPhone(
                      valorRecarga: cardsCell[index],
                      onTap: () => onTap(index),
                      selecionado: index == indice,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
