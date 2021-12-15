import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("cards page"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          _cardTipo1(),
          const SizedBox(height: 30.0),
          cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          cardTipo2(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 25.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.savings,
              color: Colors.grey,
            ),
            title: Text('Soy el titulo'),
            subtitle: Text(
                'Este es a idea d eloq quq euqiero mostrarles con los sub'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: const Text("Cancelar")),
              TextButton(onPressed: () {}, child: const Text("Ok")),
            ],
          )
        ],
      ),
    );
  }

  Widget cardTipo2() {
    final card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
              'https://mymodernmet.com/wp/wp-content/uploads/2020/11/International-Landscape-Photographer-Year-PhotographER-1st-KelvinYuen-2.jpg',
            ),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text("asdasd"),
          )
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: card,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(0, 0),
            ),
          ]
          // color: Colors.red,
          ),
    );
  }
}
