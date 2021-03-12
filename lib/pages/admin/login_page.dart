import 'package:flutter/material.dart';
import 'package:icare_front/widgets/custom_input.dart';
import 'package:icare_front/widgets/logo.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                Logo(titulo: 'Bienvenido a iCare', height: 200,),

                _Form(),
              ],
            ),
          ),
        ),
     ),
   );
  }
}



class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // final authService = Provider.of<AuthService>( context );
    // final socketService = Provider.of<SocketService>( context );

    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [

          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
            iconColor: Colors.purple[700],
            cursorColor: Colors.purple[700],
          ),

          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
            iconColor: Colors.purple[700],
            cursorColor: Colors.purple[700],
          ),

          MaterialButton(
            child: Text('Ingresar', style: TextStyle( color: Colors.purple, fontSize: 16, fontWeight: FontWeight.w500 ),),
            shape: StadiumBorder(),
            elevation: 0,
            splashColor: Colors.transparent,
            highlightElevation: 0,
            color: Colors.purple[50],
            minWidth: double.infinity,
            height: 50,

            onPressed:(){
            }
          ),


        ],
      ),
    );
  }
}