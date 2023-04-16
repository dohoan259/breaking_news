// Widget for displaying a text field with error handling
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final String? error;
  final TextEditingController controller;
  final void Function(String) onChanged;

  AppTextField({
    required this.labelText,
    required this.error,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: error != null
                    ? Colors.red
                    : Colors.grey, // Set border color based on error
              ),
            ),
          ),
        ),
        if (error != null) // Display error message if there is an error
          Text(
            error!,
            style: TextStyle(color: Colors.red),
          ),
      ],
    );
  }
}
