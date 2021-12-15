import 'package:flutter/material.dart';
import 'package:vi_componentes/pages/alert_page.dart';
import 'package:vi_componentes/providers/menu_provider.dart';
import 'package:vi_componentes/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page jeje xd"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> lista = [];
    data?.forEach((opcion) {
      final widgetTemp = ListTile(
        title: Text(opcion['texto']),
        leading: getIconFromString(opcion['icon']),
        trailing: const Icon(Icons.arrow_right_alt),
        onTap: () {
          // final route =
          //     MaterialPageRoute(builder: (context) => const AlertPage());
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opcion["ruta"]);
        },
      );
      lista
        ..add(widgetTemp)
        ..add(const Divider());
    });
    return lista;
  }
}
