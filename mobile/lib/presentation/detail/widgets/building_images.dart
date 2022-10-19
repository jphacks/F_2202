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
              return ImageCard(imageUrl: imageUrls[index]);
            },
            itemCount: imageUrls.length,
          ),
        )
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image(
        image: NetworkImage(imageUrl),
        fit: BoxFit.cover,
      ),
    );
  }
}
