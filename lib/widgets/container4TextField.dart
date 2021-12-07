import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final Widget? child;
  const TextContainer({Key? key, this.child, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width*0.8,
        height: size.height*0.06,
        margin: margin,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade50,
          borderRadius: BorderRadius.circular(5),
        ),
        child: child,
      ),
    );
  }
}
