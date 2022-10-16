import 'package:flutter/material.dart';

class GlowingButton extends StatelessWidget {
  const GlowingButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.color1 = Colors.cyan,
    this.color2 = Colors.greenAccent,
    this.icon = Icons.search,
  }) : super(key: key);

  final Color color1;
  final Color color2;
  final String title;
  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 55,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
          ),
          boxShadow: const [],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
