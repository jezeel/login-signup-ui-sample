import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color? buttonColor;
  final void Function()? press;
  final String? buttonText;
  final Color? textColor;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? buttonHeight;
  final double? buttonwidth;
  const Button({Key? key,
    this.buttonColor,
    this.buttonwidth,
    this.buttonHeight,
    this.press,
    this.buttonText,
    this.textColor,
    this.margin,
    this.padding,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: buttonwidth,
        height: buttonHeight,
        margin: margin,
        child:ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: TextButton(
            onPressed: press,
            style: TextButton.styleFrom(
              backgroundColor: buttonColor,
            ),
            child: Text(buttonText!, style: TextStyle(color: textColor),),
          ),
        ),
      ),
    );
  }
}



