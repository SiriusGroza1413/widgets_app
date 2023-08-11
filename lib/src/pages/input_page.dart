import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';
  List<String> _poderes = ['Volar', 'Rayos X', 'Super aliento', 'Super fuerza'];

  String _opcionSeleccionada = 'Volar';

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona()
        ],
      )
    );
  }

  
  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Caracteres ${_nombre.length}'),
        hintText: 'nombre',
        labelText: 'Nombre',
        helperText: 'Nombre obligatorio',
        suffixIcon: Icon(Icons.accessibility, color: Colors.blue,),
        icon: Icon(Icons.account_circle, color: Colors.blue)
      ),
      onChanged: (value) {
        _nombre = value;
        setState(() {
          _nombre = value;
        });
      },
    );
  }
  

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Caracteres ${_email.length}'),
        hintText: 'email',
        labelText: 'Email',
        helperText: 'Email obligatorio',
        suffixIcon: Icon(Icons.alternate_email, color: Colors.blue,),
        icon: Icon(Icons.email, color: Colors.blue)
      ),
      onChanged: (valor) => setState(() {
        _email = valor;
      })
    );
  }


  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'password',
        labelText: 'Password',
        helperText: 'Password obligatorio',
        suffixIcon: Icon(Icons.lock, color: Colors.blue,),
        icon: Icon(Icons.lock, color: Colors.blue)
      ),
      onChanged: (valor) => setState(() {
        print(valor);
      })
    );
  }


  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'fecha de nacimiento',
        labelText: 'Fecha de nacimineto',
        helperText: 'Fecha obligatoria',
        suffixIcon: Icon(Icons.calendar_month, color: Colors.blue,),
        icon: Icon(Icons.calendar_today, color: Colors.blue)
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }


  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email es: $_email'),
      trailing: Text('Poder: $_opcionSeleccionada'),
    );
  }


  List<DropdownMenuItem<String>> getOpcionesDropdown() {

    List<DropdownMenuItem<String>> lista = [];
    _poderes.forEach((poder) { 
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder
      ));
    });
    return lista;
  }

  Widget  _crearDropDown() {

    return Row(children: [
      Icon(Icons.select_all, color: Colors.blue,),
      SizedBox(width: 30.0),
      Expanded(
        child: DropdownButton(
          value: _opcionSeleccionada,
          items: getOpcionesDropdown(),
          onChanged: (opt) {
          setState(() {
            _opcionSeleccionada = opt!;
          });
          },
        ),
      )
    ]);

    
  }


  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      locale: Locale('es', 'ES'),
    );

    if (picked != null) {
      DateTime selectedTime = picked;

      setState(() {
        _fecha = selectedTime.toString();
        _inputFieldDateController.text = _fecha;
      });
   };
  }
  

  


}