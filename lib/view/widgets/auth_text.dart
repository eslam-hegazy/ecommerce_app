import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class auth_text extends StatelessWidget {
  final Icon icon;
  final String hint;
  final Function fun;
  final String error;
  final TextInputType type;
  final bool secure;
  auth_text(this.icon, this.hint, this.fun, this.error, this.type, this.secure);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        obscureText: secure,
        validator: (value) {
          if (value.isEmpty) {
            return error;
          }
          return null;
        },
        onSaved: fun,
        keyboardType: type,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIcon: icon,
          hintStyle: TextStyle(fontFamily: "NewTegomin"),
          hintText: hint,
        ),
      ),
    );
  }
}
