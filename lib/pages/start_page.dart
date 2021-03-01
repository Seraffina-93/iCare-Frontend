import 'package:flutter/material.dart';
import 'package:icare_front/widgets/custom_input.dart';

import 'package:icare_front/widgets/footer_curvo.dart';


class StartPage extends StatefulWidget {

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {

    final double _ancho = MediaQuery.of(context).size.width;
    final double _alto = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover
          )
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              FooterCurvo(),

              Positioned(
                width: _ancho,
                top: 0,
                child: Hero(
                  tag: 'dialogo',
                  child: Container(
                    alignment: Alignment.center,
                    width: _ancho,
                    height: _alto*0.6,
                    margin: EdgeInsets.fromLTRB(_ancho*0.1, _alto*0.1, _ancho*0.1, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
              ),

              Positioned(
                width: _ancho,
                top: 0,
                child: Container(
                    alignment: Alignment.center,
                    width: _ancho,
                    height: _alto*0.6,
                    margin: EdgeInsets.fromLTRB(_ancho*0.1, _alto*0.1, _ancho*0.1, 0),
                    child: _Dialogo(),
                ),
              ),

              
            ],
          ),
        ),
     ),
   );
  }
}


class _Dialogo extends StatefulWidget {

  @override
  __DialogoState createState() => __DialogoState();
}

class __DialogoState extends State<_Dialogo> {
  final emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomInput(
          icon: Icons.email,
          placeholder: 'Ingrese su email', 
          textController: emailCtrl,
          
        ),
      ],
    ),
  );
  }
}