import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SwipePage extends HookConsumerWidget {
  const SwipePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Container> cards = [
      Container(
        alignment: Alignment.center,
        child: const Text('1'),
        color: CupertinoColors.activeBlue,
      ),
      Container(
        alignment: Alignment.center,
        child: const Text('2'),
        color: CupertinoColors.activeBlue,
      ),
      Container(
        alignment: Alignment.center,
        child: const Text('3'),
        color: CupertinoColors.activeBlue,
      )
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: AppinioSwiper(
              cards: cards,
            ),
          ),
        ],
      ),
    );
  }
}
