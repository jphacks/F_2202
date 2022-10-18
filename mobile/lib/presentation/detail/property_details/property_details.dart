import 'package:flutter/material.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails(
      {super.key,
      required this.rent,
      required this.fee,
      required this.yearBuilds,
      required this.floorPlan,
      required this.propertyType,
      required this.area,
      required this.propetyStoructure,
      required this.stationWalkTime});

  final String rent;
  final String fee;
  final String yearBuilds;
  final String floorPlan;
  final String propertyType;
  final String area;
  final String propetyStoructure;
  final String stationWalkTime;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Prices(
            rent: rent,
            fee: fee,
          ),
          const SizedBox(height: 16),
          DetailTable(
            yearBuilds: yearBuilds,
            floorPlan: floorPlan,
            propertyType: propertyType,
            area: area,
            propetyStoructure: propetyStoructure,
            stationWalkTime: stationWalkTime,
          ),
        ],
      ),
    );
  }
}

class DetailTable extends StatelessWidget {
  const DetailTable({
    Key? key,
    required this.yearBuilds,
    required this.floorPlan,
    required this.propertyType,
    required this.area,
    required this.propetyStoructure,
    required this.stationWalkTime,
  }) : super(key: key);

  final String yearBuilds;
  final String floorPlan;
  final String propertyType;
  final String area;
  final String propetyStoructure;
  final String stationWalkTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DetailTableCell(
              title: '築年数',
              value: yearBuilds,
              icon: Icons.handyman_outlined,
            ),
            DetailTableCell(
              title: '間取り',
              value: floorPlan,
              icon: Icons.dashboard_outlined,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DetailTableCell(
              title: '建物種別',
              value: propertyType,
              icon: Icons.account_tree_outlined,
            ),
            DetailTableCell(
              title: '部屋の広さ',
              value: area,
              icon: Icons.border_outer_outlined,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DetailTableCell(
              title: '構造',
              value: propetyStoructure,
              icon: Icons.horizontal_split_outlined,
            ),
            DetailTableCell(
              title: '最寄駅まで',
              value: stationWalkTime,
              icon: Icons.train,
            ),
          ],
        ),
      ],
    );
  }
}

class DetailTableCell extends StatelessWidget {
  const DetailTableCell({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 左右の余白16pxを引いた幅を取得→半分にする→中央の余白を8px開けたいため最後に8を引く
      width: ((MediaQuery.of(context).size.width - 32) / 2) - 8,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24,
            color: const Color(0xff6c6c6c),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff6c6c6c),
                  fontSize: 14,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Color(0xfffe6663),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Prices extends StatelessWidget {
  const Prices({
    Key? key,
    required this.rent,
    required this.fee,
  }) : super(key: key);

  final String rent;
  final String fee;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          rent,
          style: const TextStyle(
            color: Color(0xfffe6663),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 2),
        const Text(
          "万円",
          style: TextStyle(
            color: Color(0xfffe6663),
            fontSize: 20,
          ),
        ),
        const SizedBox(width: 16),
        Text(
          "管理費等: $fee円",
          style: const TextStyle(
            color: Color(0xff333333),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
