import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/l10n/app_localization.dart';

class PropertyListPage extends HookConsumerWidget {
  const PropertyListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          children: const [
            Text(
              '検索中の地域/範囲',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            Text(
              '大阪市北区 周辺500m',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        elevation: 0,
        actions: [
          // TODO(rui): 正しいアイコンを入れる
          IconButton(
            icon: const Icon(
              Icons.manage_search_outlined,
              size: 30,
            ),
            onPressed: () {},
          )
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
            const Text(
              '物件が300件見つかりました',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => const _PropertyListTile(),
                itemCount: 5,
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalization.of(context)!;
    final size = MediaQuery.of(context).size;
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 16,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Ink.image(
                  image: const AssetImage('assets/sample.jpg'),
                  height: 150,
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
                    children: const [
                      Text(
                        'ダイナシティ梅田',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '2.9万',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red,
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
                        '大阪市北区鶴野町３−２１',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
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
                        '管理費5000円',
                        style: TextStyle(color: Colors.black.withOpacity(0.9)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1階/2階建 築34年',
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
                            '1LDK/17.95m2',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.9)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'JR東西線/大阪駅 5分',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.9)),
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
