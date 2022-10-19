import 'package:flutter/material.dart';

class DropShadow extends StatelessWidget {
  const DropShadow({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 8,
            color: Color.fromRGBO(0, 0, 0, 0.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
