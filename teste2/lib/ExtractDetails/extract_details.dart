import 'package:flutter/material.dart';

class ExtractDetails extends StatelessWidget {
  const ExtractDetails({super.key, required this.title});

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
          children: const [
            SizedBox(
              height: 24,
            ),
            Text(
              'Meu cupom está “Em análise” há mais de 5 dias. Isso é normal?',
              style: TextStyle(
                color: Color.fromRGBO(74, 74, 75, 1),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Em casos especiais, o prazo pode variar até 30 dias pois depende do envio das informações do cupom para o SEFAZ (Secretaria da Fazenda) pelo estabelecimento, ficando com o status de “Em análise”.",
              style: TextStyle(
                color: Color.fromRGBO(74, 74, 75, 1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Após o prazo de 30 dias de indisponibilidade do cupom na SEFAZ, o cupom é rejeitado.",
              style: TextStyle(
                color: Color.fromRGBO(74, 74, 75, 1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "A responsabilidade pelo envio do documento à Secretaria da Fazenda é do estabelecimento onde foi realizada a compra.",
              style: TextStyle(
                color: Color.fromRGBO(74, 74, 75, 1),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
