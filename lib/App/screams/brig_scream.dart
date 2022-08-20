import 'package:flutter/material.dart';

import 'Home_scream.dart';

  class arcimage extends StatelessWidget {
    const arcimage({Key? key, required this.title}) : super(key: key);
    final String title;
  @override
  Widget build(BuildContext context) {
  var title = 'Imagens Remotas(web)';
  return MaterialApp(
  title: title,
  home: Scaffold(
  appBar: AppBar(
  title: Text(title),
  ),


  body:
      Row(
        children: [
          Image.network(
            'https://picsum.photos/250?image=9',
          ),
          Image.network(
            'https://picsum.photos/250?image=9',
          ),
          Image.network(
            'https://picsum.photos/250?image=9',
          ),
          Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ],
      )

  ),
  );
  }
  }