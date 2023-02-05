import 'package:flutter/material.dart';

class ButtonC extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonC({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w / 1.5,
      // height: ,
      child: ElevatedButton(
        onPressed:onPressed,
        child: Text(text),
      ),
    );
  }
}
