import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'config/app_routing.dart' as app_routing;
import 'config/app_routing_name.dart';

final globalNavigateKey = GlobalKey<NavigatorState>();

class App extends ConsumerStatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: globalNavigateKey,
      initialRoute: AppRoutingName.pageTop,
      onGenerateRoute: app_routing.appRouting,
    );
  }
}
