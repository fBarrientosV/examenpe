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
          // Sección de las opciones de menú
          Card(
            child: ListTile(
              title: const Text('Transferencias'),
              onTap: () {
                // Navegar a la pantalla de Transferencias
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
                // Navegar a la pantalla de Movimientos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MovimientosScreen()),
                );
              },
            ),
          ),

          // Sección para la imagen y descripción del banco
          const SizedBox(height: 40), // Espacio entre el menú y la imagen
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/banco_logo.png',
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
