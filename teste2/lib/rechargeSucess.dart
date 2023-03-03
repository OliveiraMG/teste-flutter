import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class RechargeSucess extends StatelessWidget {
  const RechargeSucess({super.key, required this.title});

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
              height: 16,
            ),
            SvgPicture.asset('assets/svg/sucesso2.svg'),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Recarga enviada com sucesso!',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RichText(
              text: const TextSpan(
                text:
                    'O valor será transferido para a operadora do número informado em até ',
                style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '7 dias úteis.',
                    style: TextStyle(
                      color: Color.fromRGBO(57, 57, 57, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RichText(
              text: const TextSpan(
                text: 'Saiba mais sobre os prazos de resgate em ',
                style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'nosso FAQ.',
                    style: TextStyle(
                      color: Color.fromRGBO(21, 156, 164, 1),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
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
                              "Entrou no extrato!",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            ),
                          ),
                          content: Text(
                            "VOCÊ ACESSOU O SEU EXTRATO COM SUCESSO!",
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
                      'Ir para o extrato',
                      style: TextStyle(color: Colors.white, fontSize: 18),
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
