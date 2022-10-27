import 'package:flutter/material.dart';

// TODO: Update

enum TextInputState { inactive, active, disabled }

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String placeholder;
  final TextInputState state;

  const TextInput({
    super.key,
    required this.controller,
    this.label = "",
    this.placeholder = "",
    this.state = TextInputState.inactive,
  });

  @override
  Widget build(BuildContext context) {
    BorderSide border = const BorderSide(color: Colors.black, width: 3);

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        hintText: placeholder,
        // isCollapsed: true,
        // floatingLabelBehavior: FloatingLabelBehavior.never,

        // border: MyInputBorder(),
        contentPadding: EdgeInsets.all(10),
        // suffixIcon: Icon(Icons.access_alarms_rounded),
      ),
    );
  }
}
