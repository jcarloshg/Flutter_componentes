import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar page"),
        actions: <Widget>[
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://www.somosxbox.com/wp-content/uploads/2021/03/Halo-Infinite-790x481.jpg',
            ),
            radius: 20.0,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.tealAccent,
            ),
          ),
        ],
      ),
      body: const Center(
        child: FadeInImage(
          image: NetworkImage(
            'https://www.somosxbox.com/wp-content/uploads/2021/03/Halo-Infinite-790x481.jpg',
          ),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
