import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  _cardTipo1() {

    //quedaste en el video 75, minuto 04:00

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( 
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('En este lugar va la descripcion de la tarjeta de lo que quiero que se vea en esta seccion para ver que el subtitulo es el contenido de esta tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              TextButton(
                child: Text('Aceptar'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {

    final card = Container(

      child: Column(
        children: <Widget>[
          
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://images.squarespace-cdn.com/content/v1/56900294e0327c6f33e990df/1537272012510-0LAIQ8A1R7M6GO4NFSIG/3+-+IMG_05332-PS2.jpg?format=1500w'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://images.squarespace-cdn.com/content/v1/56900294e0327c6f33e990df/1537272012510-0LAIQ8A1R7M6GO4NFSIG/3+-+IMG_05332-PS2.jpg?format=1500w'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('un container que describe un paisaje noruego')
          )
        ],
      )
    );


    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),

    );

  }


}