import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Calculadora de IMC',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = 'Informe seus dados';

  void _resetFields() {
    weightController.text = '';
    heightController.text = '';
    setState(() {
      _infoText = 'Informe seus dados';
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calculate() {
    setState(
      () {
        double weight = double.parse(weightController.text);
        double height = double.parse(heightController.text) / 100;
        double imc = weight / (height * height);

        if (weight > 0 && weight <= 600 && height > 0 && height <= 250) {
          if (imc < 18.6) {
            _infoText = "Abaixo do peso(${imc.toStringAsPrecision(3)})";
          } else if (imc >= 18.6 && imc < 24.9) {
            _infoText = "Peso ideal(${imc.toStringAsPrecision(3)})";
          } else if (imc >= 24.9 && imc < 29.9) {
            _infoText = "Levemente acima do peso(${imc.toStringAsPrecision(3)})";
          } else if (imc >= 29.9 && imc < 34.9) {
            _infoText = "Obesidade grau I(${imc.toStringAsPrecision(3)})";
          } else if (imc >= 34.9 && imc < 39.9) {
            _infoText = "Obesidade grau II(${imc.toStringAsPrecision(3)})";
          } else if (imc >= 40) {
            _infoText = "Obesidade grau III(${imc.toStringAsPrecision(3)})";
          }
        } else {
          _infoText = 'Insira valores válidos';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [IconButton(onPressed: _resetFields, icon: const Icon(Icons.refresh))],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Icon(Icons.person_outline, size: 120.0, color: Colors.green),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Peso (kg)', labelStyle: TextStyle(color: Colors.green)),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.green, fontSize: 25.0),
                controller: weightController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Insira seu peso';
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Altura (cm)', labelStyle: TextStyle(color: Colors.green)),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.green, fontSize: 25.0),
                controller: heightController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Insira sua altura';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _calculate();
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(
                  'Calcular',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              Text(
                _infoText,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.green, fontSize: 25.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
