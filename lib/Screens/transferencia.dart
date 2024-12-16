import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransferenciasScreen extends StatefulWidget {
  const TransferenciasScreen({super.key});

  @override
  _TransferenciasScreenState createState() => _TransferenciasScreenState();
}

class _TransferenciasScreenState extends State<TransferenciasScreen> {
  final TextEditingController _cuentaController = TextEditingController();
  final TextEditingController _montoController = TextEditingController();
  final TextEditingController _nombreController = TextEditingController();

  Future<void> transferir() async {
    String cuentaDestino = _cuentaController.text;
    double monto = double.parse(_montoController.text);
    String nombre = _nombreController.text; 

    await FirebaseFirestore.instance.collection('transferencias').add({
      'cuentaDestino': cuentaDestino,
      'monto': monto,
      'nombre': nombre,
      'fecha': DateTime.now(),
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Transferencia realizada')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Realizar Transferencia')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nombreController,
              decoration: const InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _cuentaController,
              decoration: const InputDecoration(labelText: 'Cuenta Destino'),
            ),
            TextField(
              controller: _montoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Monto'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: transferir,
              child: const Text('Transferir'),
            ),
          ],
        ),
      ),
    );
  }
}
