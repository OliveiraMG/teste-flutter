import 'package:flutter/material.dart';
import 'package:teste2/RedeemOptions/redeemtypeinfo.dart';

class CardOptions extends StatelessWidget {
  final String img;
  final String text;
  final int minimumValue;
  final int userBalance;
  const CardOptions(
      {super.key,
      required this.img,
      required this.text,
      required this.minimumValue,
      required this.userBalance});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color.fromRGBO(220, 220, 220, 1),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 0,
      color: Color.fromRGBO(251, 251, 251, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 24,
          ),
          Image.asset('$img'),
          SizedBox(
            height: 24,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(82, 82, 82, 1),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 0,
            color: userBalance >= minimumValue
                ? Color.fromRGBO(36, 136, 36, 1)
                : Color.fromRGBO(232, 69, 46, 1),
            child: Container(
              padding: EdgeInsets.only(right: 8, left: 8, bottom: 4, top: 4),
              child: Text(
                'Mínimo: R\$ ' + minimumValue.toString() + ",00",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
