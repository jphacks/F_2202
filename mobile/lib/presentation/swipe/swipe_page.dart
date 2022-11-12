import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/swipe/swipe_card.dart';
import 'package:mobile/presentation/swipe/swipe_model.dart';

class SwipePage extends HookConsumerWidget {
  const SwipePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ExampleCard> cards = [
      ExampleCard(
        candidate: ExampleCandidateModel(
          city: 'あ',
          name: 'いけやん',
          job: '',
        ),
      ),
      ExampleCard(
        candidate: ExampleCandidateModel(
          city: 'あ',
          name: 'いけん',
          job: '',
        ),
      ),
      ExampleCard(
        candidate: ExampleCandidateModel(
          city: 'あ',
          name: 'いやん',
          job: '',
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
