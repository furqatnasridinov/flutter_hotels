// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HotelRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HotelPage(),
      );
    }
  };
}

/// generated route for
/// [HotelPage]
class HotelRoute extends PageRouteInfo<void> {
  const HotelRoute({List<PageRouteInfo>? children})
      : super(
          HotelRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotelRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
