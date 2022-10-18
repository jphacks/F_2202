import 'package:flutter/material.dart';

// メインビジュアル
class MainVisual extends StatelessWidget {
  const MainVisual({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: const NetworkImage(
              'https://images.unsplash.com/photo-1568605114967-8130f3a36994?w=800&q=80'),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: 270,
        ),
        const ImageGradationOverlay(),
        Positioned(
          top: MediaQuery.of(context).padding.top + 88,
          left: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "ダイナシティ梅田",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  // fontWeight: FontWeight.w800,
                  fontWeight: FontWeight.bold, // TODO なぜかboldにならない
                ),
              ),
              Text(
                "大阪府大阪市北区鶴野町３−２１",
                style: TextStyle(
                  color: Color(0xfffe6663),
                  fontSize: 20,
                  fontWeight: FontWeight.w800, // TODO なぜかboldにならない
                ),
              ),
            ],
          ),
        ),
        const RadiusOverlay(),
      ],
    );
  }
}

// 角丸の重ねるやつ
class RadiusOverlay extends StatelessWidget {
  const RadiusOverlay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

// メインビジュアルのグラデーション
class ImageGradationOverlay extends StatelessWidget {
  const ImageGradationOverlay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
