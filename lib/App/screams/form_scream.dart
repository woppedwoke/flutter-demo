import 'package:flutter/material.dart';

import 'Home_scream.dart';
import 'brig_scream.dart';


class FormScreen extends StatefulWidget {
  const FormScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final myController = TextEditingController();
  List<String> inputList = [];

  void _addList() {
    setState(() {
      inputList.add(myController.text);
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
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
                    context, MaterialPageRoute(builder: (context) => HomeScreen(title: 'teste',)));
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
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Retorna o valor de TextField'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextField(
                  textAlign: TextAlign.center,
                  controller: myController,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    _addList();
                  },
                  child: Text('ADICIONAR'),
                ),
                Container(
                    height: 300.0,
                    child: ListView.builder(
                      itemCount: inputList.length,
                      itemBuilder: (context, index) {
                        return Text(inputList[index]);
                      },
                    ))
              ])),
    );
  }
}