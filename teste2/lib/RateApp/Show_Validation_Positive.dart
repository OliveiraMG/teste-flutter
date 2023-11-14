import 'package:flutter/material.dart';


class ValidationPositive extends StatelessWidget {
  final Function(int index) onTap;
  final int indice;
  const ValidationPositive(
      {super.key, required this.onTap, required this.indice});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: indice == 1
          ? Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Uau, obrigada pela avaliação!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(74, 74, 75, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Iríamos adorar se você nos avaliasse na loja.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(74, 74, 75, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
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
                                "REDIRECIONADO COM SUCESSO!",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
                              ),
                            ),
                            content: const Text(
                              "Avalie-nos pela loja!",
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
                        'Avaliar na loja',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 312,
                  height: 53,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(246, 81, 54, 1),
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
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
                                "REDIRECIONADO COM SUCESSO!",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
                              ),
                            ),
                            content: const Text(
                              "Avalie-nos pela loja!",
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
                        'Talvez depois',
                        style: TextStyle(
                            color: Color.fromRGBO(246, 81, 54, 1),
                            fontSize: 16),
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
