
import 'package:flutter/material.dart';

class CustomTextFrom extends StatelessWidget {
  const CustomTextFrom(
      {super.key, this.onChanged, required this.label, required this.hint,  this.hide=false});
  final void Function(String)? onChanged;
  final String label, hint;
  final bool hide;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        onChanged: onChanged,
        
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
