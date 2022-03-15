import 'package:flutter/material.dart';
import 'constants.dart';

class wGeneralButton extends StatefulWidget {
  wGeneralButton(this.buttonText, this.buttonPress);
  final String buttonText;
  final Function buttonPress;

  @override
  State<wGeneralButton> createState() => _wGeneralButtonState();
}

class _wGeneralButtonState extends State<wGeneralButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: () {
          widget.buttonPress();
        },
        child: Text(widget.buttonText),
        style: ElevatedButton.styleFrom(
            primary: kAppColor, minimumSize: Size(double.infinity, 50)),
      ),
    );
  }
}

class wGeneralInputField extends StatefulWidget {
  const wGeneralInputField({Key? key}) : super(key: key);

  @override
  State<wGeneralInputField> createState() => _wGeneralInputFieldState();
}

class _wGeneralInputFieldState extends State<wGeneralInputField> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
