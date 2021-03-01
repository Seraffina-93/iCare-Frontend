import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:icare_front/pages/start_page.dart';
import 'package:icare_front/widgets/footer_curvo.dart';




class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {

  @override
  void initState() { 
    super.initState();
    new Timer(Duration(seconds: 5), onClose);
  }

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
        child: Stack(
          children: [

            FadeIn(
              duration: Duration(milliseconds: 1500),
              delay: Duration(milliseconds: 2000),
              child: Container(
                alignment: Alignment.center,
                width: _ancho,
                height: _alto*0.5,
                margin: EdgeInsets.fromLTRB(_ancho*0.1, _alto*0.2, _ancho*0.1, 0),
                child: Image(
                  image: AssetImage('assets/img1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: _alto*0.3,
              width: _ancho,
              child: Hero(
                tag: 'dialogo',
                child: Container(
                  alignment: Alignment.center,
                  width: _ancho,
                  color: Colors.white,
                  height: 0,
                  margin: EdgeInsets.fromLTRB(_ancho*0.1, _alto*0.2, _ancho*0.1, 0),
                  child: Image(
                    image: AssetImage('assets/img1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
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

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => StartPage(),
        transitionDuration: const Duration(seconds: 3),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}