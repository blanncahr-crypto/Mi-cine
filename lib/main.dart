import 'package:flutter/material.dart';

void main() {
  runApp(const MiCineApp());
}

class MiCineApp extends StatelessWidget {
  const MiCineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MiCine LDSW',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const PantallaBienvenida(),
    );
  }
}

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column( // *** WIDGET 1: COLUMN (Eje Vertical) ***
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              // SECCIÓN DEL LOGO
              Row( // *** WIDGET 2: ROW (Eje Horizontal) ***
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.play_circle_fill, 
                    size: 80, 
                    color: Color(0xFF00BFA5)
                  ),
                  const SizedBox(width: 15),
                  const Text( // *** WIDGET 3: TEXT ***
                    'MiCine',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00BFA5),
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 100), // Espacio entre logo y botones

              // BOTÓN: INICIAR SESIÓN
              Container( // *** WIDGET 4: CONTAINER (Para bordes y forma) ***
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFF00BFA5), width: 2),
                ),
                child: const Center(
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Color(0xFF00BFA5),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20), // Espacio entre botones

              // BOTÓN: REGISTRARSE
              Container( 
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFF00BFA5), width: 2),
                ),
                child: const Center(
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Color(0xFF00BFA5),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 80),

            ],
          ),
        ),
      ),
    );
  }
}