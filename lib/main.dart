import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // Elimina la bandera de debug
    home: TattooMaterialApp(),
  ));
}

class TattooMaterialApp extends StatelessWidget {
   const TattooMaterialApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daniela Jurado MAT:22308051281069',
          style: TextStyle(color: Colors.white), // Texto en color blanco
        ),
        centerTitle: true, // Centra el título de la AppBar
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconWithSubtitle(
              icon: Icons.colorize,
              subtitle: 'Agujas',
              iconColor: Colors.red,
              textColor: Colors.redAccent,
            ),
            IconWithSubtitle(
              icon: Icons.invert_colors,
              subtitle: 'Tintas',
              iconColor: Colors.blue,
              textColor: Colors.blueAccent,
            ),
            IconWithSubtitle(
              icon: Icons.brush,
              subtitle: 'Pinceles',
              iconColor: Colors.green,
              textColor: Colors.greenAccent,
            ),
            IconWithSubtitle(
              icon: Icons.healing,
              subtitle: 'Cuidados',
              iconColor: Colors.purple,
              textColor: Colors.purpleAccent,
            ),
            IconWithSubtitle(
              icon: Icons.cake,
              subtitle: 'Ofertas',
              iconColor: Colors.orange,
              textColor: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;
  final Color iconColor;
  final Color textColor;

  IconWithSubtitle({
    required this.icon,
    required this.subtitle,
    required this.iconColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 50.0,
          color: iconColor,
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 20.0,
            color: textColor,
          ),
        ),
        SizedBox(height: 20.0), // Espacio entre cada icono y subtítulo
      ],
    );
  }
}