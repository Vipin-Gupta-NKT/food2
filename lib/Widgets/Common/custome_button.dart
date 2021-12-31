import 'package:dg_supermart/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButtonElevated extends StatefulWidget {
  final String text;
  final Function onTap;

  const CustomButtonElevated(
      {Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  _CustomButtonElevatedState createState() => _CustomButtonElevatedState();
}

class _CustomButtonElevatedState extends State<CustomButtonElevated> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: redColor,
              side: const BorderSide(color: appColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onPressed: () => widget.onTap.call(),
            child: widget.text.text.white.xl.make().p12())
        .wFourFifth(context);
  }
}
