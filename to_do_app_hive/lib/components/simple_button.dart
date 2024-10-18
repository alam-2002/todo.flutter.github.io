import 'package:flutter/material.dart';
import 'package:to_do_app_hive/components/text_widget.dart';

class SimpleButton extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const SimpleButton({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.yellow[300],
      onPressed: onPressed,
      child: Label(label: name),
    );
  }
}
