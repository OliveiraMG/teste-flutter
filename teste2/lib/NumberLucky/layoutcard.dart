import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LayoutCard extends StatelessWidget {
  final String numeroSorte;
  const LayoutCard({super.key, required this.numeroSorte});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color.fromRGBO(176, 233, 236, 1), width: 3),
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 0,
      color: Color.fromRGBO(237, 250, 251, 1),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                numeroSorte,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
