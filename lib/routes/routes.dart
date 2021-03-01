import 'package:flutter/material.dart';

import 'package:icare_front/pages/start_page.dart';
import 'package:icare_front/pages/loading_page.dart';
import 'package:icare_front/pages/confirmacion_page.dart';
import 'package:icare_front/pages/datos_celular_page.dart';
import 'package:icare_front/pages/datos_usuario_page.dart';
import 'package:icare_front/pages/turno_garantia_page.dart';


final Map<String, Widget Function(BuildContext)> appRoutes = {

  'datos_usuario':  (_) => DatosUsuarioPage(),
  'datos_celular':  (_) => DatosCelularPage(),
  'confirmacion':   (_) => ConfirmacionPage(),
  'loading':        (_) => LoadingPage(),
  'start':          (_) => StartPage(),
  'turno_garantia': (_) => TurnoGarantiaPage(),

};