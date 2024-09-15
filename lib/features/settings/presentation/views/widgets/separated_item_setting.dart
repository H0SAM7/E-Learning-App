
  import 'package:flutter/material.dart';

Widget seperatedItem({required String title, Color? color}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      color: Colors.grey.withOpacity(0.15),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: color ?? Colors.white,
        ),
      ),
    );
  }