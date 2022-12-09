import 'package:flutter/material.dart';
import 'package:go_route/pages/contact.dart';
import 'package:go_route/pages/error_page.dart';
import 'package:go_route/pages/home.dart';
import 'package:go_route/pages/profile.dart';
import 'package:go_route/routes/app_route_const.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          name: AppRouteConstants.homeRouteName,
          pageBuilder: (context, state) => const MaterialPage(child: Home()),
        ),
        GoRoute(
          path: '/profile/:username/:userid',
          name: AppRouteConstants.profileRouteName,
          pageBuilder: (context, state) => MaterialPage(
            child: Profile(
              username: state.params['username']!,
              userid: state.params['userid']!,
            ),
          ),
        ),
        GoRoute(
          path: '/contact',
          name: AppRouteConstants.contactRouteName,
          pageBuilder: (context, state) => const MaterialPage(child: Contact()),
        )
      ],
      redirect: (context, state) {
        //TODO -> have to fix redirect
        if (!isAuth &&
            state.location.startsWith('/${AppRouteConstants.homeRouteName}')) {
          return context.namedLocation(AppRouteConstants.contactRouteName);
        } else {
          return null;
        }
      },
      errorPageBuilder: (context, state) =>
          const MaterialPage(child: ErrorPage()),
    );

    return router;
  }
}
