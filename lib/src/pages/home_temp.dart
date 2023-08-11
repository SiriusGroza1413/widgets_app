import 'package:flutter/material.dart';

//Este HomePageTemp no tiene ningun uso en si, solo queda como una demo

class HomePageTemp extends StatelessWidget {

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta()
      ),
    );
  }


  //Dos formas de recorrer una lista de widgets:

  //con for
  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider(
        color: Colors.amber,
      ));
    }
    return lista;
  }

  //con map
  List<Widget> _crearItemsCorta(){
    return options.map((item) {
      return Column(
        children:<Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            color: Colors.amber,
          )
        ],
      );
    }).toList();
  }
}