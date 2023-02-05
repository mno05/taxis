import 'package:flutter/material.dart';

class TextFieldC extends StatelessWidget {
  final String hintText;
  final String errM;
  final bool isMail;
  final bool isPassWord;
  final bool isNumber;

  final TextEditingController controller;
  const TextFieldC({
    super.key,
    required this.controller,
    this.hintText = '',
    required this.errM,
    this.isMail = false,
    this.isPassWord = false,
    this.isNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w / 1.5,
      child: TextFormField(
        controller: controller,
        keyboardType: isMail
            ? TextInputType.emailAddress
            : isNumber
                ? TextInputType.number
                : TextInputType.text,
        obscureText: isPassWord ? true : false,
        validator: (value) => value!.isEmpty ? this.errM : null,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 5,
            ),
          ),
        ),
      ),
    );
  }
}
