import 'package:flutter/material.dart';

import 'package:icare_front/pages/start_page.dart';
import 'package:icare_front/pages/loading_page.dart';
import 'package:icare_front/pages/confirmacion_page.dart';
import 'package:icare_front/pages/datos_celular_page.dart';
import 'package:icare_front/pages/datos_usuario_page.dart';
import 'package:icare_front/pages/turno_garantia_page.dart';
import 'package:page_transition/page_transition.dart';


// Rutas por nombre genericas
final Map<String, Widget Function(BuildContext)> appRoutes = {

  'datos_usuario':  (_) => DatosUsuarioPage(),
  'datos_celular':  (_) => DatosCelularPage(),
  'confirmacion':   (_) => ConfirmacionPage(),
  'loading':        (_) => LoadingPage(),
  'start':          (_) => StartPage(),
  'turno_garantia': (_) => TurnoGarantiaPage(),

};

// Rutas por nombre con animacion utilizando el paquete (page_transition) https://pub.dev/packages/page_transition
Route<dynamic> Function(RouteSettings) generatedRoutes = (settings) {

  switch (settings.name) {
    case 'start_fade':
      return PageTransition(
        child: StartPage(), 
        type: PageTransitionType.fade,
        duration: Duration(milliseconds: 300),
      );
      break;
    case 'datos_usuario_btt':
      return PageTransition(
        child: DatosUsuarioPage(), 
        type: PageTransitionType.bottomToTop,
        duration: Duration(milliseconds: 1000),
      );
      break;
    default:
      return null;
  }

};