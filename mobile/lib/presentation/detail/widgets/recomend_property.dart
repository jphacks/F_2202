import 'package:flutter/material.dart';
import 'package:mobile/presentation/detail/widgets/section_layout.dart';
import 'package:mobile/presentation/widgets/drop_shadow.dart';

class RecomendProperty extends StatelessWidget {
  const RecomendProperty({
    Key? key,
    required this.properties,
  }) : super(key: key);

  final List<Map<String, String>> properties;

  @override
  Widget build(BuildContext context) {
    return SectionLayout(
      sectionTitle: 'おすすめの物件',
      children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ListItem(
                propertyThumbnail: properties[index]["propertyThumbnail"]!,
              );
            },
            itemCount: properties.length,
          ),
        )
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.propertyThumbnail,
  }) : super(key: key);

  final String propertyThumbnail;

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      PropertyThumbnail(propertyThumbnail: propertyThumbnail),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "2.9万円",
                      style: TextStyle(
                        color: Color(0xfffe6663),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    DetailText(detailText: "管理費5,000円"),
                    DetailText(detailText: "1LDK/17.95m2"),
                    DetailText(detailText: "1階/2階建 築34年"),
                    DetailText(detailText: "JR東西線/大阪駅 5分"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailText extends StatelessWidget {
  const DetailText({
    Key? key,
    required this.detailText,
  }) : super(key: key);

  final String detailText;

  @override
  Widget build(BuildContext context) {
    return Text(
      detailText,
      style: const TextStyle(
        color: Color(0xff333333),
        fontSize: 10,
      ),
    );
  }
}

class PropertyThumbnail extends StatelessWidget {
  const PropertyThumbnail({
    Key? key,
    required this.propertyThumbnail,
  }) : super(key: key);

  final String propertyThumbnail;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image(
        image: NetworkImage(propertyThumbnail),
        fit: BoxFit.cover,
        width: 100,
        height: 100,
      ),
    );
  }
}
