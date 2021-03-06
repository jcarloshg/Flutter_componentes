import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => mostrarAlert(context),
          child: const Text("press me"),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: const StadiumBorder(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.savings),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (contex) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: const Text("Titulo del dialogo"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              Text("Este un texto dentro del contenido :) jejejeje"),
              FlutterLogo(
                size: 100,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Cancelar"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text("Ok"),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
