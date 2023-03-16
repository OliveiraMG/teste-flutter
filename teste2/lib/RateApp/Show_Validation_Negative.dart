import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidationNegative extends StatelessWidget {
  final Function(int index) onTap;
  final int indice;
  const ValidationNegative(
      {super.key, required this.indice, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: indice == 0
          ? Column(
              children: [
                const Text(
                  'Poxa, sentimos muito. Poderia nos contar o que aconteceu?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(74, 74, 75, 1)),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite aqui sua mensagem',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  expands: false,
                  textAlignVertical: TextAlignVertical.top,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 312,
                  height: 53,
                  decoration: const BoxDecoration(
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
                            title: const Center(
                              child: Text(
                                "AVALIAÇÃO ENVIADA COM SUCESSO!",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
                              ),
                            ),
                            content: const Text(
                              "Sua avaliação foi enviada e nós levaremos todo o seu feedback em consideração!",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.green),
                            ),
                            actions: [
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Center(
                      child: Text(
                        'Enviar avaliação',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : const Center(),
    );
  }
}
