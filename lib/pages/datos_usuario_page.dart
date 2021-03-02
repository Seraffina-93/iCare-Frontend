import 'package:flutter/material.dart';

import 'package:icare_front/widgets/custom_input.dart';
import 'package:icare_front/widgets/dropdown_input.dart';


class DatosUsuarioPage extends StatelessWidget {

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final modeloCtrl = TextEditingController();
  final imeiCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
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



          ],
        ),
      ),
    );
  }
}