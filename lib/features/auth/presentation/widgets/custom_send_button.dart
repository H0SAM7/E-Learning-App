
import 'package:flutter/material.dart';

class CustomSendButton extends StatelessWidget {
  const CustomSendButton({super.key, this.onTap, required this.label});
  final void Function()? onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Center(child: Text(label)),
      ),
    );
  }
}
