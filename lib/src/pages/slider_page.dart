import 'package:flutter/material.dart';

class SlidePage extends StatefulWidget {
 

  @override
  State<SlidePage> createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        )
      )
    );
  }

  
  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 50.0,
      max: 400.0,
      onChanged:  ( _bloquearCheck ) ? null : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }
  
  Widget _crearCheckBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearCheck = valor!;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
       onChanged: (valor){
         setState(() {
          _bloquearCheck = valor!;
         });
       },
    );
  }

  _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
       onChanged: (valor){
         setState(() {
          _bloquearCheck = valor;
         });
       },
    );
  }


  _crearImagen() {
    return Image(
      image: NetworkImage('http://pngimg.com/uploads/batman/batman_PNG111.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
  
}