import 'package:flutter/material.dart';

import 'package:icare_front/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iCare',
      initialRoute: 'datos_usuario',
      routes: appRoutes,
      onGenerateRoute: generatedRoutes,
    );
  }
}