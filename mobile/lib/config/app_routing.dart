import 'package:flutter/material.dart';
import 'package:mobile/config/app_routing_name.dart';
import 'package:mobile/presentation/top/search/search_page.dart';
import 'package:mobile/presentation/top/top_page.dart';

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
    case AppRoutingName.searchPage:
      final argument = settings.arguments as SearchArgument;
      return _presentPage(
        page: SearchPage(
          argument: argument,
        ),
      );
  }
}
