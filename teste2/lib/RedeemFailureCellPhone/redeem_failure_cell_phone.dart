import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FailureCellPhone extends StatelessWidget {
  const FailureCellPhone({super.key, required this.title});

  final String title;

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
          title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 24,
            ),
            SvgPicture.asset('assets/svg/FailureCellPhone.svg'),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Poxa, você não tem saldo para a recarga mínima nessa operadora :(',
              style: TextStyle(
                color: Color.fromRGBO(57, 57, 57, 1),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            RichText(
              text: const TextSpan(
                text: 'A recarga mínima da sua operadora é ',
                style: TextStyle(
                    color: Color.fromRGBO(57, 57, 57, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(
                    text: 'maior que seu saldo atual.',
                    style: TextStyle(
                      color: Color.fromRGBO(57, 57, 57, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Realize novas compras, acumule mais cashback e logo logo você atingirá o saldo suficiente para resgatar em sua operadora.',
              style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
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
                              "VOLTOU AO RESGATE!",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.red),
                            ),
                          ),
                          content: const Text(
                            "Tente quando estiver com um pouco mais de saldo!",
                            style: TextStyle(fontSize: 16, color: Colors.red),
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
                      'Voltar para resgate',
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
