import 'package:flutter/material.dart';
import 'package:screen_protector/screen_protector.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    _preventScreenshot();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _preventScreenshot() async {
    await ScreenProtector.preventScreenshotOn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CAMBIO: Usamos CircleAvatar con una imagen de fondo.
              const CircleAvatar(
                radius: 60, // Un poco más grande para que se vea mejor
                backgroundImage: AssetImage('assets/images/brandon.png'),
              ),
              const SizedBox(height: 20),
              // CAMBIO: Tu nombre
              const Text(
                'Brandon Gomez Alcazar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // CAMBIO: Tu correo
              Text(
                '231205@ids.upchiapas.edu.mx', // ¡Puedes cambiar este correo por el tuyo!
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(height: 30),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Esta pantalla también es segura y no permite capturas de pantalla.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

