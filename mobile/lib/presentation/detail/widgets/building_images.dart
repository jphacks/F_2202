import 'package:flutter/material.dart';
import 'package:mobile/presentation/detail/widgets/section_layout.dart';

class BuildingImages extends StatelessWidget {
  const BuildingImages({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    return SectionLayout(
      sectionTitle: '物件の写真',
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.9),
            padEnds: false,
            itemBuilder: (context, index) {
              return imageCard(imageUrl: imageUrls[index]);
            },
            itemCount: imageUrls.length,
          ),
        )
      ],
    );
  }

  Widget imageCard({
    required String imageUrl,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
