import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          title: Text("Kaylee Luevano 22308051281248"),
          backgroundColor: Colors.purple[300],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              outlinedButtonWithIcon(Icons.home, "Inicio", Colors.blue),
              filledButtonWithIcon(Icons.settings, "Ajustes", Colors.green),
              outlinedButtonWithIcon(Icons.email, "Correo", Colors.red),
              filledButtonWithIcon(Icons.phone, "Llamar", Colors.orange),
              outlinedButton("Aceptar", Colors.purple),
              filledButton("Cancelar", Colors.teal),
              outlinedButton("Enviar", Colors.pink),
              filledButton("Salir", Colors.amber),
            ],
          ),
        ),
      ),
    );
  }

  Widget outlinedButton(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: color, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          minimumSize: Size(200, 45),
        ),
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 16),
        ),
      ),
    );
  }

  Widget filledButton(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Colors.black54,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(200, 45),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget outlinedButtonWithIcon(IconData icon, String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: color),
        label: Text(
          text,
          style: TextStyle(color: color, fontSize: 16),
        ),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: color, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(200, 45),
        ),
      ),
    );
  }

  Widget filledButtonWithIcon(IconData icon, String text, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon, color: Colors.white),
        label: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Colors.black54,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(200, 45),
        ),
      ),
    );
  }
}
