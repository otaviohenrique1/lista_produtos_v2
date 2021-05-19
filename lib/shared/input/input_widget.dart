import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final String errorMessage;
  final String initialValue;
  final Function(String?)? onCalback;

  const InputWidget({
    Key? key,
    required this.label,
    required this.errorMessage,
    required this.initialValue,
    required this.onCalback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20,
      ),
      child: TextFormField(
        initialValue: initialValue,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
        ),
        style: TextStyle(
          fontSize: 20,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return errorMessage;
          }
        },
        onSaved: onCalback,
      ),
    );
  }
}
