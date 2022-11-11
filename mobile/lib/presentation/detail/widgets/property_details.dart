import 'package:flutter/material.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({
    super.key,
    required this.rent,
    required this.fee,
    required this.yearBuilds,
    required this.floorPlan,
    required this.propertyType,
    required this.area,
    required this.propetyStoructure,
    required this.stationWalkTime,
  });

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
          prices(
            rent: rent,
            fee: fee,
          ),
          const SizedBox(height: 16),
          detailTable(
            yearBuilds: yearBuilds,
            floorPlan: floorPlan,
            propertyType: propertyType,
            area: area,
            propetyStoructure: propetyStoructure,
            stationWalkTime: stationWalkTime,
            context: context,
          ),
        ],
      ),
    );
  }

  Widget detailTable({
    required String yearBuilds,
    required String floorPlan,
    required String propertyType,
    required String area,
    required String propetyStoructure,
    required String stationWalkTime,
    required BuildContext context,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            detailTableCell(
              title: '築年数',
              value: '$yearBuilds年',
              icon: Icons.handyman_outlined,
              context: context,
            ),
            detailTableCell(
              title: '間取り',
              value: floorPlan,
              icon: Icons.dashboard_outlined,
              context: context,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            detailTableCell(
              title: '建物種別',
              value: propertyType,
              icon: Icons.account_tree_outlined,
              context: context,
            ),
            detailTableCell(
              title: '部屋の広さ',
              value: area,
              icon: Icons.border_outer_outlined,
              context: context,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            detailTableCell(
              title: '構造',
              value: propetyStoructure,
              icon: Icons.horizontal_split_outlined,
              context: context,
            ),
            detailTableCell(
              title: '最寄駅',
              value: stationWalkTime,
              icon: Icons.train,
              context: context,
            ),
          ],
        ),
      ],
    );
  }

  Widget detailTableCell({
    required String title,
    required String value,
    required IconData icon,
    required BuildContext context,
  }) {
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

  Widget prices({
    required String rent,
    required String fee,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '$rent円',
          style: const TextStyle(
            color: Color(0xfffe6663),
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
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
