import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required String label,
  required IconData prefix,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );

Widget defaultButton({
  double width = 150,
  Color background = Colors.blueAccent,
  bool? isUpperCase,
  double radius = 20,
  required VoidCallback function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

void navigatTo(BuildContext context, Widget widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => widget));
}

void navigatAndFinish(BuildContext context, Widget widget) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => widget), (
      route) => false);
}