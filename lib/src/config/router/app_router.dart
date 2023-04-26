import 'package:auto_route/auto_route.dart';
import 'package:vegilator/src/config/router/app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen,Route',
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          usesPathAsKey: true,
          fullMatch: true,
          page: Root.page,
        ),AutoRoute(
          usesPathAsKey: true,
          fullMatch: true,
          page: Root.page,
        )

        /// routes go here
      ];
}
