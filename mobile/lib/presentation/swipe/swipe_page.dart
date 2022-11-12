import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/model/store/store.dart';
import 'package:mobile/presentation/swipe/swipe_card.dart';
import 'package:mobile/presentation/swipe/swipe_model.dart';

class SwipePage extends HookConsumerWidget {
  const SwipePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ExampleCard> cards = [
      const ExampleCard(
        store: Store(
          name: 'らあめん 渋英',
          meter: '200',
          star: '4.2',
          photoReference:
              'https://lh5.googleusercontent.com/p/AF1QipNBBSfwaV6M6sHFkeQnXVCES-XnF7AD_qIluCRW=w184-h184-n-k-no?q=70',
        ),
      ),
      const ExampleCard(
        store: Store(
          name: '羽衣湯',
          meter: '410',
          star: '4.0',
          photoReference:
              'https://spa-tokyo.net/z-t-hagoromo/hagoromoyu-2015-110000000000.jpg?q=70',
        ),
      ),
      const ExampleCard(
        store: Store(
          name: '黄金の塩らぁ麺 渋谷',
          meter: '400m',
          star: '3.9',
          photoReference:
              'https://lh5.googleusercontent.com/p/AF1QipPAtwIR0fmvKl_cFc2tXkj121uWcRGOf0kdFSc=w184-h184-n-k-no?q=70',
        ),
      ),
      const ExampleCard(
        store: Store(
          name: '改良湯',
          meter: '700',
          star: '4.3',
          photoReference:
              'https://kairyou-yu.com/wp-content/themes/kairyou-yu2018/images/top_main.jpg?q=70',
        ),
      ),
      const ExampleCard(
        store: Store(
          name: '博多天神 渋谷南口店',
          meter: '310',
          star: '4.2',
          photoReference:
              'https://lh5.googleusercontent.com/p/AF1QipP0HYOg6jOciOYzydGYs3xdsmcg9qvOBzWkaZuf=w184-h184-n-k-no?q=70',
        ),
      ),
      const ExampleCard(
        store: Store(
          name: 'らーめんはやし',
          meter: '400',
          star: '4.0',
          photoReference:
              'https://s1.spkimg.com/image/2022/10/09/07/eafLq3CIErCYrARXvevbBGu5OT9Ups94.jpg?q=60',
        ),
      ),
      const ExampleCard(
        store: Store(
          name: 'ドシー恵比寿',
          meter: '200',
          star: '4.2',
          photoReference:
              'https://do-c.jp/images/photolibrary/06_ebisu/keyvisual.jpg?q=70',
        ),
      ),
    ];

    final AppinioSwiperController controller = AppinioSwiperController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: AppinioSwiper(
              unlimitedUnswipe: true,
              controller: controller,
              unswipe: _unswipe,
              cards: cards,
              onSwipe: _swipe,
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 50,
                bottom: 40,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 80,
              ),
              swipeLeftButton(controller),
              const SizedBox(
                width: 20,
              ),
              swipeRightButton(controller),
              const SizedBox(
                width: 20,
              ),
              unswipeButton(controller),
            ],
          )
        ],
      ),
    );
  }

  void _swipe(int index, AppinioSwiperDirection direction) {}

  void _unswipe(bool unswiped) {
    if (unswiped) {
    } else {}
  }

  Widget swipeRightButton(AppinioSwiperController controller) {
    return ExampleButton(
      onTap: () => controller.swipeRight(),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: CupertinoColors.activeGreen,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.activeGreen.withOpacity(0.9),
              spreadRadius: -10,
              blurRadius: 20,
              offset: const Offset(0, 20), // changes position of shadow
            ),
          ],
        ),
        alignment: Alignment.center,
        child: const Icon(
          Icons.check,
          color: CupertinoColors.white,
          size: 40,
        ),
      ),
    );
  }

//swipe card to the left side
  Widget swipeLeftButton(AppinioSwiperController controller) {
    return ExampleButton(
      onTap: () => controller.swipeLeft(),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFFF3868),
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFFF3868).withOpacity(0.9),
              spreadRadius: -10,
              blurRadius: 20,
              offset: const Offset(0, 20), // changes position of shadow
            ),
          ],
        ),
        alignment: Alignment.center,
        child: const Icon(
          Icons.close,
          color: CupertinoColors.white,
          size: 40,
        ),
      ),
    );
  }

//unswipe card
  Widget unswipeButton(AppinioSwiperController controller) {
    return ExampleButton(
      onTap: () => controller.unswipe(),
      child: Container(
        height: 60,
        width: 60,
        alignment: Alignment.center,
        child: const Icon(
          Icons.rotate_left_rounded,
          color: CupertinoColors.systemGrey2,
          size: 40,
        ),
      ),
    );
  }
}

class ExampleButton extends StatelessWidget {
  final Function onTap;
  final Widget child;

  const ExampleButton({
    required this.onTap,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: child,
    );
  }
}
