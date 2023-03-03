import 'package:flutter/material.dart';
import 'package:teste2/numberlucky.dart';
import 'package:teste2/passwordRecharge.dart';
import 'package:teste2/rechargeSuccess.dart';
import 'package:teste2/redeemReward.dart';
import 'package:teste2/redeemcellphone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RechargeSuccess(title: 'Resgatar'),
    );
  }
}
