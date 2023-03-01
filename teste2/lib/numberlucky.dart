// ignore: file_names

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste2/layoutcard.dart';

class NumberLucky extends StatelessWidget {
  final String title;
  NumberLucky({super.key, required this.title});

  final List<String> cards = ['3245684', '3245683', '3245682'];
  int _numNotification = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 169, 156, 1),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.help_outline,
              color: Color.fromRGBO(232, 69, 46, 1),
            ),
          )
        ],
        leading: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Icon(
              Icons.radio_button_unchecked_outlined,
              color: Colors.white,
              size: 28,
            ),
            const Icon(
              Icons.notifications_none_outlined,
              color: Colors.white,
              size: 16,
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 69, 46, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: BoxConstraints(
                  minWidth: 18,
                  minHeight: 18,
                ),
                child: Text(
                  _numNotification.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Chegaram números da sorte para você!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Esses são os números da sorte que você ganhou com a sua nota fiscal!',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                cards.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 19),
                  child: LayoutCard(numeroSorte: cards[index]),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 312,
                height: 53,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 81, 54, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Center(
                            child: Text(
                              "NÚMEROS DA SORTE!",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            ),
                          ),
                          content: Text(
                            "Os números foram enviados com sucesso!",
                            style: TextStyle(fontSize: 16, color: Colors.green),
                          ),
                          actions: [
                            TextButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Center(
                    child: Text(
                      'Ver campanhas',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
