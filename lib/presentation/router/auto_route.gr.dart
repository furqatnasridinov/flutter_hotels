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
    BookingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookingPage(),
      );
    },
    HotelRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HotelPage(),
      );
    },
    NumberRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NumberPage(),
      );
    },
  };
}

/// generated route for
/// [BookingPage]
class BookingRoute extends PageRouteInfo<void> {
  const BookingRoute({List<PageRouteInfo>? children})
      : super(
          BookingRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

/// generated route for
/// [NumberPage]
class NumberRoute extends PageRouteInfo<void> {
  const NumberRoute({List<PageRouteInfo>? children})
      : super(
          NumberRoute.name,
          initialChildren: children,
        );

  static const String name = 'NumberRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
