part of 'animaciones.dart';

// Animacion de una caja blanca centrada que se abre hacia arriba o hacia abajo dependiendo su posicion
// Toma un child que es lo que mostrara una vez este desplegada
// El _delay es lo que tardara en comenzar la animacion
// El tamaño de la caja de dialogo es fija pero se calcula respecto a la pantalla del dispositivo (_anchoPantalla , _altoPantalla) 

class DialogoBoxAnimado extends StatefulWidget {

  final Widget child;
  final Duration _delay;

  DialogoBoxAnimado({
    @required this.child,
    Duration delay,
  }): this._delay = delay != null ? delay : Duration(milliseconds: 700);

  @override
  _DialogoBoxAnimadoState createState() => _DialogoBoxAnimadoState();
}

class _DialogoBoxAnimadoState extends State<DialogoBoxAnimado> with SingleTickerProviderStateMixin{

  final double _altoPantalla = window.physicalSize.height / window.devicePixelRatio;
  final double _anchoPantalla = window.physicalSize.width / window.devicePixelRatio;
  double _alturaContainer = 0;
  bool _mostrarDialogo = false;
  Timer timer;

  @override
  void initState() {
    Timer(widget._delay, () {
      setState(() {
        _alturaContainer = _altoPantalla*0.6;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return AnimatedContainer(
      onEnd: (){
        setState(() {
          _mostrarDialogo = true;
        });
      },
      alignment: Alignment.center,
      width: _anchoPantalla,
      height: _alturaContainer,
      margin: EdgeInsets.fromLTRB(_anchoPantalla*0.1, _altoPantalla*0.1, _anchoPantalla*0.1, 0),
      duration: Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: (_mostrarDialogo)
        ? FadeIn(child: widget.child)
        : Container()
    );
  }
}

