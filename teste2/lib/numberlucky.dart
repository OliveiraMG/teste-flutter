// ignore: file_names

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:teste2/layoutcard.dart';

class NumberLucky extends StatefulWidget {
  final String title;
  const NumberLucky({super.key, required this.title});

  @override
  State<NumberLucky> createState() => _NumberLuckyState();
}

class _NumberLuckyState extends State<NumberLucky> {
  List<String> cards = ['3245684', '3245683', '3245682'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color.fromRGBO(232, 69, 46, 1),
        ),
        title: Text(
          widget.title,
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
                    borderRadius: BorderRadius.all(Radius.circular(4))),
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
