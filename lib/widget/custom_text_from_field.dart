import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField({
    super.key,
    required this.productNameText,
    this.hintText,
    this.suffixWidget,
    this.prefixWidget,
  });

  final TextEditingController productNameText;
  final String? hintText;
  final Widget? suffixWidget;
  final Widget? prefixWidget;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: productNameText,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.transparent)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.transparent)
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 14,
              color: Color(0xff727785),
              fontWeight: FontWeight.bold
          ),
          fillColor: Color(0xffE0E2EC),
          filled: true,
          suffixIcon: suffixWidget,
          suffixIconConstraints: BoxConstraints.expand(height: 25, width: 60),
          prefixIcon: prefixWidget
      ),
    );
  }
}