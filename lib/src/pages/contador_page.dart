import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

//Estado del statefullwidget
class _ContadorPageState extends State<ContadorPage> { // _ private

  final _estiloTexto = new TextStyle( fontSize: 25);//final puesto que estamoos en un statelesswidget
  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: _estiloTexto,),
            Text('$_conteo',style: _estiloTexto),
          ],
        )
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
      
    );
  }

  Widget _crearBotones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),//caja para generar espacio entre los botones
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),//expanded
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _sustraer,),
        SizedBox(width: 10.0,),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _agregar,)//_agregar sin parentesis
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }
  
  void _sustraer(){
    setState(() => _conteo--);
  }

  void _reset(){
    setState(() => _conteo = 0);
  }
}