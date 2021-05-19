import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final Function() onCalback;

  const ButtonWidget({
    Key? key,
    required this.label,
    required this.onCalback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: onCalback,
      ),
    );
  }
}
