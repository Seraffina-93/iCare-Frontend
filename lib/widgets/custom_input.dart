import 'package:flutter/material.dart';


// Input de texto customizable

class CustomInput extends StatelessWidget {

  final IconData icon;
  final Color iconColor;
  final Color cursorColor;
  final String placeholder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInput({
    @required this.icon, 
    @required this.placeholder, 
    @required this.textController, 
    this.keyboardType = TextInputType.text, 
    this.isPassword = false,
    this.iconColor = Colors.blue,
    this.cursorColor = Colors.blue,
  });

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(30),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black54.withOpacity(0.05),
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        controller: this.textController,
        autocorrect: false,
        keyboardType: this.keyboardType,
        obscureText: this.isPassword,
        cursorColor: this.cursorColor,
        
        decoration: InputDecoration(
          prefixIcon: Icon( this.icon, color: this.iconColor, ),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: this.placeholder,
        ),

      ),
    );
  }
}