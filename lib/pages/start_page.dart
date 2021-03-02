import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icare_front/animations/animaciones.dart';

import 'package:icare_front/widgets/custom_input.dart';
import 'package:icare_front/widgets/footer_curvo.dart';

// Pagina inicial donde se pide el email del usuario para continuar
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
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: [
            FooterCurvo(),

            Positioned(
              bottom: _alto*0.3,
              width: _ancho,
              child: DialogoBoxAnimado(
                child: _Dialogo(),
                delay: Duration(milliseconds: 300),
                
              ),
            ),
            
          ],
        ),
     ),
   );
  }
}

// Primer dialogo de Carito donde pide el email 
class _Dialogo extends StatefulWidget {

  @override
  __DialogoState createState() => __DialogoState();
}

class __DialogoState extends State<_Dialogo> {
  final emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        Text('Bienvenido a iCare. \nPor favor ingrese su direccion de correo electronico para continuar.',
          style: TextStyle( color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600,  ),),

        CustomInput(
          icon: Icons.email,
          iconColor: Colors.purple[700],
          cursorColor: Colors.purple[700],
          placeholder: 'Ingrese su email', 
          textController: emailCtrl,
          keyboardType: TextInputType.emailAddress,
        ),

        MaterialButton(
          child: Text('Continuar', style: TextStyle( color: Colors.purple, fontSize: 16, fontWeight: FontWeight.w500 ),),
          shape: StadiumBorder(),
          elevation: 0,
          splashColor: Colors.transparent,
          highlightElevation: 0,
          color: Colors.purple[50],
          minWidth: double.infinity,
          height: 50,

          onPressed:(){
            // Navigator.pushNamed(context, 'datos_usuario_btt');
          }
        ),

      ],
    ),
  );
  }
}
