import 'package:auto_route/auto_route.dart';

import '../screens/screen.dart';

part 'auto_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HotelRoute.page,
          //initial: true,
        ),
        AutoRoute(
          page: NumberRoute.page,
          //path: "/number",
          initial: true,
        ),
      ];
}
