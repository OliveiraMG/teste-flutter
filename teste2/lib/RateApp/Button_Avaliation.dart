import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtnAvaliation extends StatelessWidget {
  final Function(int index) onTap;
  final int indice;
  const BtnAvaliation({super.key, required this.onTap, required this.indice});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => onTap(0),
          child: Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: indice == 0
                    ? Color.fromRGBO(252, 221, 217, 1)
                    : Colors.white),
            child: Stack(
              alignment: Alignment.center,
              children: const <Widget>[
                Icon(
                  Icons.circle_outlined,
                  color: Color.fromRGBO(219, 50, 54, 1),
                  size: 75,
                ),
                Icon(
                  Icons.thumb_down_alt_outlined,
                  color: Color.fromRGBO(219, 50, 54, 1),
                  size: 26,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 32,
        ),
        InkWell(
          onTap: () => onTap(1),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: indice == 1
                    ? Color.fromRGBO(209, 242, 220, 1)
                    : Colors.white),
            child: Stack(
              alignment: Alignment.center,
              children: const <Widget>[
                Icon(
                  Icons.circle_outlined,
                  color: Color.fromRGBO(7, 138, 0, 1),
                  size: 75,
                ),
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Color.fromRGBO(7, 138, 0, 1),
                  size: 26,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
