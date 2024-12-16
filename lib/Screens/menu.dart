import 'package:examen/Screens/movimientos.dart';
import 'package:examen/Screens/transferencia.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menú Principal')),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text('Transferencias'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TransferenciasScreen()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Movimientos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MovimientosScreen()),
                );
              },
            ),
          ),

          const SizedBox(height: 40), 
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/banco.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 16), 

  
                const Text(
                  'Bienvenido a nuestro Banco. Estamos aquí para ofrecerte servicios bancarios de alta calidad. '
                  'Ya sea que desees realizar transferencias, consultar tus movimientos o cualquier otro servicio, '
                  'nuestro objetivo es brindarte la mejor experiencia bancaria.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
