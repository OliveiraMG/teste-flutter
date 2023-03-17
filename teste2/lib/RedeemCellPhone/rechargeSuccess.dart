import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RechargeSuccess extends StatelessWidget {
  const RechargeSuccess({super.key, required this.title});

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
            const Text(
              'Recarga enviada com sucesso!',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(
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
            const SizedBox(
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
                  Get.bottomSheet(
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Sua conta está em análise.',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(57, 57, 57, 1),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          RichText(
                            text: const TextSpan(
                              text:
                                  'Para mais informações consulte seu e-mail ou entre em contato com ',
                              style: TextStyle(
                                color: Color.fromRGBO(57, 57, 57, 1),
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'nossa equipe de atendimento.',
                                  style: TextStyle(
                                    color: Color.fromRGBO(21, 156, 164, 1),
                                    fontSize: 16,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
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
                              onPressed: () => Get.back(),
                              child: const Text(
                                'Entrar em contato',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Abrir BottomSheet',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
