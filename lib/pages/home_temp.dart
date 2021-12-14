import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes temp"),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = [];

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(title: Text(opt));

  //     lista
  //       ..add(tempWidget)
  //       ..add(const Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    return opciones
        .map((opcion) => Column(
              children: [
                ListTile(
                  title: Text(opcion),
                  subtitle: const Text("hola mi pana"),
                  leading: const Icon(Icons.place_sharp),
                  trailing: const Icon(Icons.downhill_skiing),
                  onTap: () => print("Hola mi pana"),
                ),
                const Divider(),
              ],
            ))
        .toList();
  }
}
