import 'package:flutter/material.dart';

import 'package:icare_front/widgets/custom_input.dart';
import 'package:icare_front/widgets/dropdown_input.dart';


class DatosUsuarioPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('iCare'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        height: double.infinity,
        // color: Colors.red,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image(image: AssetImage('assets/img1.png')),
              Text('Saca tu turno ahora!', style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold ),),
              
              _Form(),
              


            ],
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

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final modeloCtrl = TextEditingController();
  final imeiCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {

    // final authService = Provider.of<AuthService>(context);
    // final socketService = Provider.of<SocketService>( context );

    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [

          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),

          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),

          CustomInput(
            icon: Icons.settings_cell_sharp,
            placeholder: 'Modelo',
            keyboardType: TextInputType.text,
            textController: modeloCtrl,
          ),

          CustomInput(
            icon: Icons.settings_applications,
            placeholder: 'IMEI',
            keyboardType: TextInputType.emailAddress,
            textController: imeiCtrl,
          ),

          CustomInput(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            textController: passCtrl,
            keyboardType: TextInputType.number,
            isPassword: false,
          ),

          DropDownInput(),

          // BotonAzul(
          //   text: 'Crear Cuenta',
          //   onPressed: authService.autenticando ? null : () async {
          //     print(nameCtrl.text);
          //     print(emailCtrl.text);
          //     print(passCtrl.text);
          //     final registroOk = await authService.register(nameCtrl.text.trim(), emailCtrl.text.trim(), passCtrl.text.trim());

          //     if( registroOk == true ){
          //       socketService.connect();
          //       Navigator.pushReplacementNamed(context, 'usuarios');
          //     }else{
          //       mostrarAlerta(context, 'Registro incorrecto', registroOk );
          //     }

          //   },
          // ),


        ],
      ),
    );
  }
}