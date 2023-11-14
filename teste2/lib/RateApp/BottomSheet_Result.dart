import 'package:flutter/material.dart';
import 'package:get/get.dart';

void bottomSheetResultNegative() {
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
                'Poxa que pena!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(57, 57, 57, 1),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Pode nos contar o que aconteceu?',
                style: TextStyle(
                  color: Color.fromRGBO(57, 57, 57, 1),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Digite aqui sua mensagem',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              expands: false,
              textAlignVertical: TextAlignVertical.top,
              textAlign: TextAlign.start,
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
                  Get.defaultDialog(
                    title: 'AVALIAÇÃO ENVIADA COM SUCESSO!',
                    middleText:
                        'Sua avaliação foi enviada e nós levaremos todo o seu feedback em consideração!',
                    textConfirm: 'OK',
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                      Get.back();
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
        ),
      ),
      isScrollControlled: true);
}

void bottomSheetResultPositive() {
  Get.bottomSheet(
      Container(
        height: 295,
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
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
                  Get.defaultDialog(
                    title: 'REDIRECIONADO COM SUCESSO!',
                    middleText: 'Avalie-nos pela loja!',
                    textConfirm: 'OK',
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                      Get.back();
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
                  Get.defaultDialog(
                    title: 'REDIRECIONADO COM SUCESSO!',
                    middleText: 'Avalie-nos pela loja!',
                    textConfirm: 'OK',
                    confirmTextColor: Colors.white,
                    onConfirm: () {
                      Get.back();
                    },
                  );
                },
                child: const Center(
                  child: Text(
                    'Talvez depois',
                    style: TextStyle(
                        color: Color.fromRGBO(246, 81, 54, 1), fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      isScrollControlled: true);
}
