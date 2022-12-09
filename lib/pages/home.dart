import 'package:flutter/material.dart';
import 'package:go_route/routes/app_route_const.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () => {
                    GoRouter.of(context)
                        .pushNamed(AppRouteConstants.profileRouteName, params: {
                      'username': 'kalaineethan',
                      'userid': 'KILLAHNFJSYNJKSBUHISIUFH'
                    })
                  },
              child: const Text('Profile')),
          ElevatedButton(
              onPressed: () => {
                    GoRouter.of(context)
                        .pushNamed(AppRouteConstants.contactRouteName)
                  },
              child: const Text('Contact'))
        ],
      ),
    );
  }
}
