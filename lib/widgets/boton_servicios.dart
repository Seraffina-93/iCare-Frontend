import 'package:flutter/material.dart';




class BotonServicios extends StatelessWidget {

  final IconData icon;
  final Color iconColor;
  final String text;
  final Color backgroundColor;
  final Function onPresssed;

  const BotonServicios({
    @required this.icon, 
    this.iconColor = Colors.black, 
    @required this.text, 
    this.backgroundColor = Colors.white, 
    @required this.onPresssed
  });


  @override
  Widget build(BuildContext context) {

    final _alto = MediaQuery.of(context).size.height;

    return Container(
      child: Column(
        children: [
          Text(this.text, style: TextStyle( fontSize: _alto*0.035, fontWeight: FontWeight.w600 ),),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: _alto*0.15,
              width: _alto*0.15,
              color: this.backgroundColor,
              child: IconButton(
                color: this.iconColor,
                icon: Icon(this.icon, size: _alto*0.08,), 
                onPressed: this.onPresssed
              ),
            ),
          ),
        ],
      )
    );
  }
}