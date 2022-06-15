import 'package:flutter/material.dart';

Widget defaultButton({
  double? width = double.infinity,
  Color? background = Colors.blue,
  required Function function,
  required String text,
  bool isUpperCase = true,
  double radius = 10.0,
}) =>
    Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            radius,
          ),
          color: background,
        ),
        width: width,
        child: MaterialButton(
          onPressed: () {
            function();
          },
          child: Text(
            isUpperCase ? text.toUpperCase() : text,
            style: TextStyle(color: Colors.white),
          ),
        ));
Widget defultTextField({
  required TextEditingController controller,
  required TextInputType type,
  required String text,
  required IconData prefixIcon,
  required Function validator,
  bool obscureText = false,
  IconData? suffixIcon,
 Function(dynamic?val)? onSubmit,
Function? onChange,
Function? suffoxPressed,
}) =>
    TextFormField(
        controller: controller,
        keyboardType: type,
        onFieldSubmitted: (s){onSubmit!(s);},
        onChanged: (s){onChange!(s);} ,
        validator: (value){
return validator!(value);

        },
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(text),
          border: OutlineInputBorder(),
          prefixIcon: Icon(
            prefixIcon,
          ),
          suffixIcon: suffixIcon != null
              ? IconButton(
                onPressed: (){
                  suffoxPressed!();
                },
                icon: Icon(
                    suffixIcon,
                  ),
              )
              : null,
        ));
