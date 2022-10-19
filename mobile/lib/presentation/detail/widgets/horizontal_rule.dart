import 'package:flutter/material.dart';

class HorizontalRule extends StatelessWidget {
  const HorizontalRule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 28),
      child: const SizedBox(
        width: double.infinity,
        height: 1,
        child: ColoredBox(
          color: Color(0xffececf6),
        ),
      ),
    );
  }
}
