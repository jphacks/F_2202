import 'package:flutter/material.dart';
import 'package:mobile/presentation/detail/header/header_action_buttons.dart';
import 'package:mobile/presentation/detail/main_visual/main_visual.dart';
import 'package:mobile/presentation/widgets/header_back_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: const [
              MainVisual(),
            ],
          ),
          const HeaderBackButton(),
          const HeaderActionButtons(),
        ],
      ),
    );
  }
}
