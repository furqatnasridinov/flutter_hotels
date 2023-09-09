import 'package:flutter/material.dart';
import 'package:flutter_hotels/domain/di/dependency_manager.dart';
import 'package:flutter_hotels/presentation/router/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return FutureBuilder(
      future: Future.wait([setUpDependencies()]),
      builder: (context, snapshot) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerConfig: _appRouter.config(),
            );
          },
        );
      },
    );
  }
}
