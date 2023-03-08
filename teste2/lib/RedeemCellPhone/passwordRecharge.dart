import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PasswordRecharge extends StatelessWidget {
  const PasswordRecharge({super.key, required this.title});
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
            const Text(
              'Por motivos de segurança, por favor, digite a senha da sua conta:',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(57, 57, 57, 1),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Color.fromRGBO(97, 97, 97, 1), width: 1.5),
                borderRadius: BorderRadius.circular(4.0),
              ),
              elevation: 0,
              color: Colors.white,
              child: Container(
                width: 312,
                height: 56,
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Senha*',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(141, 141, 141, 1),
                      fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                child: Text(
                  'Esqueci minha senha',
                  style: TextStyle(
                    color: Color.fromRGBO(21, 156, 164, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
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
                              "Senha correta!",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.green),
                            ),
                          ),
                          content: Text(
                            "Você realizou a recarga com sucesso!",
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
                      'Enviar',
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
