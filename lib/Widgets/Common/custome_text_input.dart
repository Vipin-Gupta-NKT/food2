import 'package:dg_supermart/Constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputField extends StatefulWidget {
  final String hint;
  final String label;
  final bool isEmail;
  final bool isPassword;
  final String errorMessage;
  final Icon hintIcon;
  final bool showIcon;
  bool showPasswordEye;
  final TextEditingController textEditingController;
  CustomInputField({
    Key? key,
    required this.hint,
    required this.label,
    this.isEmail = false,
    this.showIcon = false,
    this.isPassword = false,
    this.showPasswordEye = false,
    this.errorMessage = "",
    this.hintIcon = const Icon(
      Icons.keyboard,
    ),
    required this.textEditingController,
  }) : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        focusColor: appColor,
        labelStyle: const TextStyle(color: appColor),
        labelText: widget.label,
        hintText: widget.hint,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  widget.showPasswordEye
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: appColor,
                ),
                onPressed: () {
                  setState(() {
                    widget.showPasswordEye = !widget.showPasswordEye;
                  });
                },
              )
            : const SizedBox(),
      ),
      keyboardType:
          widget.isEmail ? TextInputType.emailAddress : TextInputType.text,
      validator: (value) {
        if (widget.errorMessage != "") {
          // if (value == "") return widget.errorMessage;
          // if (widget.isEmail) {
          //   if (!isEmailValid(value!)) return widget.errorMessage;
          // } else if (widget.isPassword) {
          //   if (value!.length < 6) {
          //     return widget.errorMessage;
          //   }
          // }
        }
        return null;
      },
      obscureText: widget.showPasswordEye,
      controller: widget.textEditingController,
    );
  }
}
