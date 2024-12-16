import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MovimientosScreen extends StatelessWidget {
  const MovimientosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movimientos')),
      body: StreamBuilder<QuerySnapshot>(
        stream:
            FirebaseFirestore.instance.collection('transferencias').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          var transferencias = snapshot.data!.docs;
          return ListView.builder(
            itemCount: transferencias.length,
            itemBuilder: (context, index) {
              var transferencia = transferencias[index];
              return ListTile(
                title: Text('Cuenta: ${transferencia['cuentaDestino']}'),
                subtitle: Text('Monto: \$${transferencia['monto']}'),
              );
            },
          );
        },
      ),
    );
  }
}
