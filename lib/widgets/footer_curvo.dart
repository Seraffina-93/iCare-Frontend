import 'package:flutter/material.dart';


class FooterCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _FooterCurvoPainter(),
      ),
    );
  }
}

class _FooterCurvoPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    final lapiz = Paint();

    // Propiedades
    lapiz.color = Colors.white;
    // lapiz.style = PaintingStyle.stroke; 
    lapiz.style = PaintingStyle.fill; 
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.moveTo( 0.0, size.height  );
    path.lineTo( size.width * 0, size.height * 0.90 );
    path.quadraticBezierTo( size.width*0.1, size.height * 0.86, size.width*0.2 , size.height * 0.90 );
    path.quadraticBezierTo( size.width*0.3, size.height * 0.94, size.width*0.4 , size.height * 0.90 );
    path.quadraticBezierTo( size.width*0.5, size.height * 0.86, size.width*0.6 , size.height * 0.90 );
    path.quadraticBezierTo( size.width*0.7, size.height * 0.94, size.width*0.8 , size.height * 0.90 );
    path.quadraticBezierTo( size.width*0.9, size.height * 0.86, size.width*1 , size.height * 0.90 );
    path.lineTo( size.width , size.height  );

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}