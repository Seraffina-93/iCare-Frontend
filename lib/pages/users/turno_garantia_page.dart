import 'package:flutter/material.dart';
import 'package:icare_front/widgets/boton_servicios.dart';


class TurnoGarantiaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.purple[100]])
        ),
        alignment: Alignment.center,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              BotonServicios(
                icon: Icons.calendar_today_outlined, 
                text: 'Sacar Turno',
                iconColor: Colors.white,
                backgroundColor: Colors.purple[300],
                onPresssed: (){}
              ),

              // SizedBox(height: 10,),

              BotonServicios(
                icon: Icons.receipt_rounded, 
                text: 'Cancelar/Reprogramar turno',
                iconColor: Colors.white,
                backgroundColor: Colors.purple[500],
                onPresssed: (){}
              ),

              // SizedBox(height: 10,),

              BotonServicios(
                icon: Icons.star_border, 
                text: 'Reclamar Garantia',
                iconColor: Colors.white,
                backgroundColor: Colors.purple[700],
                onPresssed: (){}
              ),


            ],
          ),
        ),
      ),
   );
  }
}