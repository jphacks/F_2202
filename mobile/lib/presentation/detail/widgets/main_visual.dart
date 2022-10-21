import 'package:flutter/material.dart';

class MainVisual extends StatelessWidget {
  const MainVisual({
    Key? key,
    required this.propertyName,
    required this.fullAddress,
    required this.thumbnailUrl,
  }) : super(key: key);

  final String propertyName;
  final String fullAddress;
  final String thumbnailUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          thumbnailUrl,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: 250,
        ),
        imageGradationOverlay(context),
        Positioned(
          top: MediaQuery.of(context).padding.top + 110,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                propertyName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  // fontWeight: FontWeight.w800,
                  fontWeight: FontWeight.bold, // TODO なぜかboldにならない
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                fullAddress,
                style: const TextStyle(
                  color: Color(0xfffe6663),
                  fontSize: 17,
                  fontWeight: FontWeight.w800, // TODO なぜかboldにならない
                ),
              ),
            ],
          ),
        ),
        radiusOverlay(context),
      ],
    );
  }

// 角丸の重ねるやつ
  Widget radiusOverlay(context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 185,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 218,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
      ),
    );
  }

  // メインビジュアルのグラデーション
  Widget imageGradationOverlay(context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 270,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x00000000), Colors.black],
          ),
        ),
      ),
    );
  }
}
