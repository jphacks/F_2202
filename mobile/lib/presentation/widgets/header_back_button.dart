import 'package:flutter/material.dart';

class HeaderBackButton extends StatelessWidget {
  const HeaderBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        color: Colors.white,
      ),
      // TODO: 左右にmargin16pxを入れようとするとバグる
      // margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: 44,
        height: 44,
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
