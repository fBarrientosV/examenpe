import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/inicio.dart';
import 'Screens/menu.dart';
import 'Screens/transferencia.dart';
import 'Screens/movimientos.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banco App',
      initialRoute: '/',  
      onGenerateRoute: (settings) {
       
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => InicioScreen());
          case '/menu':
            return MaterialPageRoute(builder: (context) => const MenuScreen());
          case '/transferencias':
            return MaterialPageRoute(builder: (context) => const TransferenciasScreen());
          case '/movimientos':
            return MaterialPageRoute(builder: (context) => const MovimientosScreen());
          default:
            return MaterialPageRoute(builder: (context) => InicioScreen()); 
        }
      },
    );
  }
}
