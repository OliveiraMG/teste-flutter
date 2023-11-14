import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class RedeemReward extends StatelessWidget {
  const RedeemReward({super.key, required this.title});
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
            SvgPicture.asset('assets/svg/sucesso2.svg'),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Resgate confirmado com sucesso!',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(57, 57, 57, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color.fromRGBO(198, 198, 198, 1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Image.asset('assets/png/ifood.png'),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Valor Solicitado',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(57, 57, 57, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'R\$ 20,00',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(57, 57, 57, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Copie aqui seu código PIN:',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(57, 57, 57, 1),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 312,
              height: 56,
              child: Card(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color.fromRGBO(97, 97, 97, 1),
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            '123143314314511234567891234567894567',
                            style: TextStyle(
                                color: Color.fromRGBO(57, 57, 57, 1),
                                fontSize: 16),
                          ),
                        ),
                      ),
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationX(math.pi),
                        child: const Icon(
                          Icons.content_copy_outlined,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Como usar seu crédito pré-pago iFood:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(57, 57, 57, 1),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            RichText(
              text: const TextSpan(
                text: '1. Abra seu iFood e clique em ',
                style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Perfil',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(57, 57, 57, 1),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            RichText(
              text: const TextSpan(
                text: '2. Acesse ',
                style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Pagamentos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(57, 57, 57, 1),
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: ' e pressione ',
                    style: TextStyle(
                      color: Color.fromRGBO(57, 57, 57, 1),
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: 'Resgatar iFood Card',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(57, 57, 57, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            RichText(
              text: const TextSpan(
                text: '3. Digite ou copie e cole o código do seu ',
                style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'iFood Card',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(57, 57, 57, 1),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              '4. O saldo do iFood Card estará na sua conta para ser utilizado',
              style: TextStyle(
                color: Color.fromRGBO(57, 57, 57, 1),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 32,
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
                            "RECOMPENSA RESGATADA!",
                            style: TextStyle(fontSize: 20, color: Colors.green),
                          ),
                        ),
                        content: const Text(
                          "Recompensas resgatadas com sucesso!",
                          style: TextStyle(fontSize: 16, color: Colors.green),
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
                    'Entendi',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 49,
            ),
          ],
        ),
      ),
    );
  }
}
