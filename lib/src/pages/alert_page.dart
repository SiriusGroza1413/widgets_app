import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page')
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
             backgroundColor: Colors.blue,
             foregroundColor: Colors.black,
             shape: StadiumBorder(),
          ),
          child: Text('Mostrar alerta'),
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.add_location),
      ),
    );
  }

  void _mostrarAlerta(context){
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la caja alerta'),
              FlutterLogo(
                size: 100.0,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed:(){
                Navigator.of(context).pop();
              },
              child: Text('Ok')
            ),
            TextButton(
              onPressed:() => Navigator.of(context).pop(),
              child: Text('Cancelar')
            ),
          ],
        );
      }
    );
  }
}