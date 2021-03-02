part of 'animaciones.dart';


// Logo de iCare animado con fade-in, tiempo de espera y luego un fade-out

class LogoAnimado extends StatefulWidget {
  @override
  _LogoAnimadoState createState() => _LogoAnimadoState();
}

class _LogoAnimadoState extends State<LogoAnimado> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> opacidad;  
  Animation<double> opacidadOut; 


  @override
  void initState() { 

    controller = new AnimationController(
      vsync: this, duration: Duration(milliseconds: 5000),
    );

    opacidad = Tween( begin: 0.0, end: 1.0 ).animate( 
      CurvedAnimation( parent: controller, curve: Interval(0.2, 0.45, curve: Curves.easeOut) ),
    );

    opacidadOut = Tween( begin: 0.0, end: 1.0 ).animate( 
      CurvedAnimation( parent: controller, curve: Interval(0.75, 1.0, curve: Curves.easeOut) ),
    );

    controller.addListener(() {
      if(controller.status == AnimationStatus.completed){
        Navigator.pushReplacementNamed(context, 'start_fade');
      }
    });
    super.initState();    
  }


  @override
  void dispose() { 
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Logo(),
      builder: (BuildContext context, Widget childLogo) {

        return Opacity(
          opacity: opacidad.value - opacidadOut.value,
          child: childLogo
        );
      },
    );
  }
}

class _Logo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final double _ancho = MediaQuery.of(context).size.width;
    final double _alto = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      width: _ancho,
      height: _alto*0.5,
      margin: EdgeInsets.fromLTRB(_ancho*0.1, _alto*0.2, _ancho*0.1, 0),
      child: Image(
        image: AssetImage('assets/img1.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}