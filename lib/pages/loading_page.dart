import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:icare_front/animations/animaciones.dart';
import 'package:icare_front/widgets/footer_curvo.dart';


// Pagina de "carga" que muestra el logo animado junto con el footer tambien animado

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: [

            LogoAnimado(),
            
            FadeInUp(
              duration: Duration(milliseconds: 1000),
              delay: Duration(seconds: 1),
              child: FooterCurvo()
            ),
          ],
        ),
     ),
   );
  }
}




