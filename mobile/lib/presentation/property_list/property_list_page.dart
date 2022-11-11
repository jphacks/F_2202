import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/config/app_routing_name.dart';
import 'package:mobile/model/property/property.dart';
import 'package:mobile/presentation/detail/detail_page.dart';

class PropertyListArgument {
  final List<Property> propertyList;
  final String place;

  PropertyListArgument({
    required this.propertyList,
    required this.place,
  });
}

class PropertyListPage extends HookConsumerWidget {
  const PropertyListPage({
    Key? key,
    required this.argument,
  }) : super(key: key);

  final PropertyListArgument argument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final propertyState = useState(argument.propertyList);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            const Text(
              '検索中の地域/範囲',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            Text(
              '${argument.place}周辺',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.manage_search_outlined,
              size: 30,
            ),
            onPressed: () {
              showCupertinoModalPopup<void>(
                context: context,
                builder: (BuildContext context) => Container(
                  height: 300,
                  padding: const EdgeInsets.only(top: 6.0),
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  color: CupertinoColors.systemBackground.resolveFrom(context),
                  child: SafeArea(
                    top: false,
                    child: Column(
                      children: [
                        TextButton(
                          child: const Text('決定'),
                          onPressed: () {
                            propertyState.value
                                .sort((a, b) => a.rent.compareTo(b.rent));
                            propertyState.notifyListeners();
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          height: 200,
                          child: CupertinoPicker(
                            itemExtent: 30,
                            onSelectedItemChanged: (index) {},
                            children: [
                              '賃料が安い順',
                              '賃料が高い順',
                              '駅から近い順',
                              '築年数が古い順',
                              '築年数が新しい順',
                            ].map((e) => Text(e)).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
        iconTheme: IconTheme.of(context).copyWith(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${argument.propertyList.length}件の検索結果',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => _PropertyListTile(
                  property: propertyState.value[index],
                ),
                itemCount: argument.propertyList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PropertyListTile extends StatelessWidget {
  const _PropertyListTile({
    Key? key,
    required this.property,
  }) : super(key: key);

  final Property property;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 16,
      child: InkWell(
        onTap: () async {
          await Navigator.of(context).pushNamed(
            AppRoutingName.pageDetail,
            arguments: DetailPageArgument(
              property: property,
            ),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Ink.image(
                  image: AssetImage(
                    property.imageUrl,
                  ),
                  height: 180,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        property.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/location.png'),
                      const SizedBox(width: 4),
                      Text(
                        property.address,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        property.propertyType,
                        style: TextStyle(color: Colors.black.withOpacity(0.9)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '築${property.totalGroundStory}年',
                        style: TextStyle(color: Colors.black.withOpacity(0.9)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            property.rent != 0 ? '${property.rent}円' : '掲載なし',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border_sharp,
                          size: 30,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
