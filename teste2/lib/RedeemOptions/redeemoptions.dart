import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teste2/RedeemOptions/cardoptions.dart';
import 'package:teste2/RedeemOptions/redeemtypeinfo.dart';

class RedeemOptions extends StatelessWidget {
  RedeemOptions({super.key, required this.title});

  final List<RedeemTypeInfo> cards = [
    RedeemTypeInfo(
        img: 'assets/png/coin-dollar.png',
        text: 'Conta Bancária',
        minimumValue: 15),
    RedeemTypeInfo(
        img: 'assets/png/rechargecellphone.png',
        text: 'Recarga de celular',
        minimumValue: 10),
    RedeemTypeInfo(
        img: 'assets/png/ifood.png', text: 'iFood', minimumValue: 10),
    RedeemTypeInfo(img: 'assets/png/uber.png', text: 'Uber', minimumValue: 20)
  ];

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
              height: 30,
            ),
            Text(
              'Como você deseja resgatar seus pontos?',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(57, 57, 57, 1)),
            ),
            SizedBox(
              height: 32,
            ),
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: 0.8,
              crossAxisCount: 2,
              children: List.generate(
                cards.length,
                (index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: CardOptions(
                      text: cards[index].text,
                      img: cards[index].img,
                      minimumValue: cards[index].minimumValue,
                      userBalance: 10,
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
