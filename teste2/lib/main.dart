import 'package:flutter/material.dart';
import 'package:teste2/ExtractDetails/extract_details.dart';
import 'package:teste2/NumberLucky/layoutcard.dart';
import 'package:teste2/NumberLucky/numberlucky.dart';
import 'package:teste2/RateApp/Rate_App.dart';
import 'package:teste2/RedeemCellPhone/passwordRecharge.dart';
import 'package:teste2/RedeemCellPhone/rechargeSuccess.dart';
import 'package:teste2/RedeemFailureCellPhone/redeem_failure_cell_phone.dart';
import 'package:teste2/redeemiFoodSucess/redeemReward.dart';
import 'package:teste2/RedeemCellPhone/redeemcellphone.dart';
import 'package:get/get.dart';
import 'package:teste2/RedeemOptions/redeemoptions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:FailureCellPhone(title: 'Resgatar'),
    );
  }
}
