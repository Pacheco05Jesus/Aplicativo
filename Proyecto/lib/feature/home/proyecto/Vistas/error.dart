import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  final String mensaje;

  Error({this.mensaje = 'Error'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, color: Colors.red, size: 80),
            SizedBox(height: 20),
            Text(
              mensaje,
              style: TextStyle(fontSize: 20, color: Colors.red[800]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              icon: Icon(Icons.refresh),
              label: Text('Reintentar'),
              onPressed: () {
                // Aquí puedes recargar datos o reiniciar algo
              },
            ),
          ],
        ),
      ),
    );
  }
}