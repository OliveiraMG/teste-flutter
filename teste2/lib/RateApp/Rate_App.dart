import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste2/RateApp/Button_Avaliation.dart';
import 'package:teste2/RateApp/Show_Validation_Negative.dart';
import 'package:teste2/RateApp/Show_Validation_Positive.dart';

import 'BottomSheet_Result.dart';

class RateApp extends StatefulWidget {
  const RateApp({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<RateApp> createState() => _RateAppState();
}

class _RateAppState extends State<RateApp> {
  RxInt indiceBottomSheet = RxInt(-1);
  int indice = -1;

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
          widget.title,
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
              'Conta tudo!',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(57, 57, 57, 1)),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'Você está gostando do Mangos?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(57, 57, 57, 1),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            BtnAvaliation(
              indice: indice,
              onTap: (int index) {
                setState(() {
                  indice = index;
                });
              },
            ),
            const SizedBox(
              height: 32,
            ),
            ValidationPositive(
                indice: indice,
                onTap: (int index) {
                  setState(() {
                    indice = index;
                  });
                }),
            ValidationNegative(
                indice: indice,
                onTap: (int index) {
                  setState(() {
                    indice = index;
                  });
                }),
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
                              'Conta tudo!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(57, 57, 57, 1),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'Você está gostando do Mangos?',
                              style: TextStyle(
                                color: Color.fromRGBO(57, 57, 57, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Obx(
                           () {
                              return BtnAvaliation(
                                indice: indiceBottomSheet.value,
                                onTap: (int index) {
                                    indiceBottomSheet.value = index;
                                    if (indiceBottomSheet.value == 1) {
                                      bottomSheetResultPositive();
                                    } else if (indiceBottomSheet.value == 0) {
                                      bottomSheetResultNegative();
                                    }
                                },
                              );
                            }
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
