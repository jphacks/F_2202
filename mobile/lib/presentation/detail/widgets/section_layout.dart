import 'package:flutter/material.dart';
import 'package:mobile/presentation/detail/widgets/section_title.dart';

class SectionLayout extends StatelessWidget {
  const SectionLayout({
    Key? key,
    required this.sectionTitle,
    required this.children,
  }) : super(key: key);

  final String sectionTitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: sectionTitle),
          ...children,
        ],
      ),
    );
  }
}
