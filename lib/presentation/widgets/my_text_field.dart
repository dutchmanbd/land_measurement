import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextInputAction? action = TextInputAction.next;
  final ValueChanged<String>? onChanged;
  const MyTextField({
    super.key,
    required this.hintText,
    required this.inputType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: inputType,
      maxLines: 1,
      minLines: 1,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
        hintText: hintText,
      ),
      textInputAction: action,
    );
  }
}
