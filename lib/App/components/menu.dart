import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app/App/screams/form_scream.dart';

import '../screams/Home_scream.dart';
import '../screams/brig_scream.dart';


Widget Menu(BuildContext context) {
  return Drawer(

    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menu',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic)),
        ),
        ListTile(
          title: const Text('Home Screen'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen(title: 'teste deu certo',)));
          },
        ),
        ListTile(
          title: const Text('arc image'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => arcimage(title: 'teste',)));
          },
        ),
        ListTile(
          title: const Text('Formulario'),
          onTap: () {

            Navigator.push(
                context, MaterialPageRoute(builder: (context) => FormScreen(title: "Form navega")));
          },
        ),
      ],
    ),
  );
}
