import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    Key? key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.controller,
    required this.isPassword,
    this.borderColor,
    this.validator,
    this.inputBorder, this.fillColor,
  }) : super(key: key);

  final String? labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool isPassword;
  final Color? borderColor;
  final String? Function(String?)? validator;
  final InputBorder? inputBorder;
  final Color? fillColor;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: 60.0,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: widget.inputBorder,
          labelText: widget.labelText,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? IconButton(
            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          )
              : null,
        ),
        obscureText: widget.isPassword ? _obscureText : false,
        validator: widget.validator,
      ),
    );
  }
}