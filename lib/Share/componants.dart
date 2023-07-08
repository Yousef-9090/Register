import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget MyTextFormFeild({
  required String lableText,
  required IconData prefixIcon,
  required double padding,
  IconData? sufixIcon,
  bool obscureText = false,
  required TextInputType keybourdType,
  required String ? Function(String?)? validator ,
  required TextEditingController controller,

}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: TextFormField(
      style: TextStyle(
        color:  Color(0xff252121),
      ),
      cursorColor: Color(0xff252121),
      validator: validator,
      controller: controller,
      keyboardType: keybourdType,
      obscureText: obscureText,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Color(0xff252121))
        ),
        labelStyle: TextStyle(color:  Color(0xff252121),
      ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color:  Color(0xff252121)
              )
          ),
          labelText: lableText,
          prefixIcon: Icon(prefixIcon,color: Color(0xff252121)),
          hintStyle: TextStyle(color:  Color(0xff252121)),
          suffixIcon: sufixIcon  != null
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    sufixIcon,color: Color(0xff252121),
                  ),
                )
              : null,
      ),
    ),
  );
}

class ListItem {
  final String title;
  final String urlImage;

  const ListItem({
    required this.title,
    required this.urlImage,
  });
}
