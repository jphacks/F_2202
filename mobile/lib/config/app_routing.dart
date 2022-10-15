import 'package:flutter/material.dart';
import 'package:mobile/config/app_routing_name.dart';

import '../presentation/top/top_page.dart';

/// 遷移のアニメーション等が必要ならここを調整
PageRouteBuilder _presentPage({
  required Widget page,
  bool fullScreenDialog = false,
}) {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => page,
    fullscreenDialog: fullScreenDialog,
  );
}

PageRouteBuilder? appRouting(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutingName.pageTop:
      return _presentPage(page: const TopPage());
  }
}
