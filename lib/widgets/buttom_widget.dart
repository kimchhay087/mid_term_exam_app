import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
        required this.title,
        required this.onPressed,
        this.backgroundColor,
        this.textColor, required this.borderColor})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  final  MaterialStateProperty<Color?>?  backgroundColor;
  final Color? textColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 46),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: backgroundColor,
          shadowColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
                side: BorderSide(color: borderColor,width: 2)
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 22,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
