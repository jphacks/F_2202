import 'package:flutter/material.dart';

class HeaderBackButton extends StatelessWidget {
  const HeaderBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 呼び出し元に依存してしまうため，なるおニキに相談
    // headerをstackで実装すると決まったらそのままにする
    return Positioned(
      top: MediaQuery.of(context).padding.top + 8,
      left: 16,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          color: Colors.white,
        ),
        child: SizedBox(
          width: 44,
          height: 44,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    );
  }
}
