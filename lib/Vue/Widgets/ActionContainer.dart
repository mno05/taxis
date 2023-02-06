import 'package:flutter/material.dart';

class ActionConatainer extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const ActionConatainer({
    super.key,
    required this.text,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: 9,
        child: Container(
          height: h / 6,
          width: w / 4,
          margin: EdgeInsets.only(left: w * 0.013, right: w * 0.013),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              text,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
