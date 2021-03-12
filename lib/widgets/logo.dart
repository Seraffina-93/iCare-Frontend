import 'package:flutter/material.dart';





class Logo extends StatelessWidget {

  final String titulo;
  final double height;

  const Logo({ 
    @required this.titulo,
    this.height = 200.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            
            Container(child: Image(image: AssetImage('assets/logo.png'), fit: BoxFit.cover,), height: this.height,),
            SizedBox( height: 20, ),
            Text(this.titulo, style: TextStyle( fontSize: 30 ),)

          ],
        ),
      ),
    );
  }
}