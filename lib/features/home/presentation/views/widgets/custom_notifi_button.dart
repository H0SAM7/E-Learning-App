
import 'package:flutter/material.dart';

class CustomNotificationButton extends StatelessWidget {
  const CustomNotificationButton({
    super.key, this.onPressed,
    
  });
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.2),
      ),
      child: IconButton(
          onPressed:onPressed,
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
          )),
    );
  }
}
