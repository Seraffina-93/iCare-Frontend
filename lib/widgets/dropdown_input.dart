import 'package:flutter/material.dart';


class DropDownInput extends StatefulWidget {
  @override
  _DropDownInputState createState() => _DropDownInputState();
}

class _DropDownInputState extends State<DropDownInput> {

  String modeloIphone;


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
      child: DropdownButtonFormField<String>(
        value: modeloIphone,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black87),
        hint: Text( 'Seleccione un modelo' ),
        decoration: InputDecoration(
          prefixIcon: Icon( Icons.phone_iphone ),
          border: InputBorder.none
        ),
        
        // underline: Container(
        //   height: 2,
        //   color: Colors.deepPurpleAccent,
        // ),
        onChanged: (String newValue) {
          setState(() {
            modeloIphone = newValue;
          });
        },
        items: <String>['iPhone 5', 'iPhone 5S', 'iPhone 6', 'iPhone 6 Plus','iPhone 6S', 'iPhone 6S Plus','iPhone 7', 'iPhone 7 Plus',]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}