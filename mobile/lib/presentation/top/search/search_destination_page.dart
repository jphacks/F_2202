import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/config/app_routing_name.dart';
import 'package:mobile/constant/color_hex.dart';
import 'package:mobile/model/destination/destination.dart';
import 'package:mobile/presentation/top/search/search_destination_controller_provider.dart';
import 'package:mobile/presentation/top/search/search_page.dart';

class SearchDestinationPage extends HookConsumerWidget {
  const SearchDestinationPage({
    Key? key,
    required this.onAnimatedTap,
    required this.onCheckedTap,
  }) : super(key: key);

  final ValueChanged<List<Destination>> onAnimatedTap;
  final ValueChanged<bool> onCheckedTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchDestinationControllerProvider);
    final controller = ref.watch(searchDestinationControllerProvider.notifier);
    final size = MediaQuery.of(context).size;
    final _isChecked = useState(false);

    return Scaffold(
      backgroundColor: HexColor('FFFFFF'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  indent: size.width * 0.35,
                  endIndent: size.width * 0.35,
                  thickness: 8,
                ),
                const SizedBox(
                  height: 10,
                ),
                _textFieldArea(
                  labelText: '物件1',
                  textEditingController: controller.textEditingController1,
                  index: 1,
                ),
                if (controller.textEditingController1.text.isNotEmpty)
                  _textFieldArea(
                    labelText: '物件2',
                    textEditingController: controller.textEditingController2,
                    index: 2,
                  ),
                if (controller.textEditingController2.text.isNotEmpty)
                  _textFieldArea(
                    labelText: '物件3',
                    textEditingController: controller.textEditingController3,
                    index: 3,
                  ),
                const SizedBox(
                  height: 20,
                ),
                // _textFieldArea(
                //   labelText: '優先する条件',
                //   textEditingController: controller.textEditingController4,
                //   index: 4,
                //   hintText: '条件を設定する',
                //   color: Colors.purple,
                //   selectCondition: true,
                // ),
                SwitchListTile(
                  value: _isChecked.value,
                  title: const Text(
                    '施設優先モード',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cursive',
                    ),
                  ),
                  onChanged: (bool value) {
                    _isChecked.value = true;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: size.width,
                  height: size.height * 0.055,
                  child: ElevatedButton(
                    child: const Text(
                      '物件を探す',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      onAnimatedTap([
                        state.destination1,
                        state.destination2,
                        state.destination3,
                      ]);

                      onCheckedTap(_isChecked.value);

                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            color: Colors.grey.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '履歴',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset('assets/location.png'),
                    const SizedBox(width: 20),
                    Text(
                      '渋谷駅',
                      style: TextStyle(color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset('assets/location.png'),
                    const SizedBox(width: 20),
                    Text(
                      '恵比寿駅',
                      style: TextStyle(color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Image.asset('assets/location.png'),
                    const SizedBox(width: 20),
                    Text(
                      '東京駅',
                      style: TextStyle(color: Colors.black.withOpacity(0.8)),
                    ),
                  ],
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _textFieldArea({
    required String labelText,
    required TextEditingController textEditingController,
    required int index,
    Color? color,
    String? hintText,
    InputBorder? inputBorder,
    bool? selectCondition,
  }) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        _searchIcon(
          color: color ?? Colors.green,
        ),
        const SizedBox(
          width: 15,
        ),
        _SearchTextField(
          labelText: labelText,
          border: inputBorder,
          hintText: hintText ?? '場所を検索する',
          textEditingController: textEditingController,
          index: index,
          selectCondition: selectCondition ?? false,
        ),
      ],
    );
  }

  Widget _searchIcon({
    Color color = Colors.green,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Image.asset(
        'assets/green.png',
        color: color,
      ),
    );
  }
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({
    Key? key,
    required this.labelText,
    required this.textEditingController,
    required this.index,
    required this.hintText,
    required this.selectCondition,
    this.border,
  }) : super(key: key);

  final String labelText;
  final InputBorder? border;
  final int index;
  final String hintText;
  final bool selectCondition;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: TextFormField(
        onTap: () {
          selectCondition
              ? showCupertinoModalPopup<void>(
                  context: context,
                  builder: (BuildContext context) => Container(
                    height: 300,
                    padding: const EdgeInsets.only(top: 6.0),
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    color:
                        CupertinoColors.systemBackground.resolveFrom(context),
                    child: SafeArea(
                      top: false,
                      child: Column(
                        children: [
                          TextButton(
                            child: const Text('決定'),
                            onPressed: () {
                              textEditingController.text = '施設優先';
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(
                            height: 200,
                            child: CupertinoPicker(
                              itemExtent: 30,
                              onSelectedItemChanged: (index) {},
                              children: [
                                '施設優先',
                                '家賃が安い',
                                '住みやすさ重視',
                                '家の広さ',
                              ].map((e) => Text(e)).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Navigator.of(context).pushNamed(
                  AppRoutingName.searchPage,
                  arguments: SearchArgument(
                    selectedIndex: index,
                  ),
                );
        },
        controller: textEditingController,
        readOnly: true,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(
            labelText,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: border,
        ),
        style: const TextStyle(color: Colors.black),
        cursorColor: Colors.grey,
      ),
    );
  }
}
