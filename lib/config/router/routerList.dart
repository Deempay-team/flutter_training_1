import 'package:flutter/material.dart';
import 'package:flutter_training_1/config/router/approute.dart';
import 'package:flutter_training_1/pages/Home/homeApp.dart';
import 'package:flutter_training_1/pages/Home/home_app_cubit.dart';
import 'package:flutter_training_1/pages/rewards/rewardPage.dart';
import 'package:flutter_training_1/pages/rewards/rewards_cubit.dart';
import 'package:flutter_training_1/pages/transfer/transferPage.dart';
import 'package:flutter_training_1/pages/transfer/transfer_cubit.dart';
import 'package:flutter_training_1/pages/user/userPage.dart';
import 'package:flutter_training_1/pages/user/user_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

GoRouter router() {
  return GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => HomeAppCubit(),
            child: const HomeApp(),
          );
        },
        routes: <RouteBase>[
          GoRoute(
            path: Approute.rewardPage,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider(
                create: (context) => RewardsCubit(),
                child: const Rewardpage(),
              );
            },
          ),
          GoRoute(
            path: Approute.userPage,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider(
                create: (context) => UserCubit(),
                child: const UserPage(),
              );
            },
          ),

          GoRoute(
            path: Approute.transferPage,
            builder: (BuildContext context, GoRouterState state) {
              return BlocProvider(
                create: (context) => TransferCubit(),
                child: const Transferpage(),
              );
            },
          ),
        
        ],
      ),
    ],
  );
}
