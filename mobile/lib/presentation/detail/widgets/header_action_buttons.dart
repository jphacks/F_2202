import 'package:flutter/material.dart';

// 右側のボタン群
class HeaderActionButtons extends StatelessWidget {
  const HeaderActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 8,
      right: 16,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}
