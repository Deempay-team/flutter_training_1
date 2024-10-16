import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training_1/config/router/approute.dart';
import 'package:flutter_training_1/config/router/routerList.dart';
import 'package:go_router/go_router.dart';
import 'package:meta/meta.dart';

part 'home_app_state.dart';

class HomeAppCubit extends Cubit<HomeAppState> {
  HomeAppCubit() : super(HomeAppInitial());

  void changeCardColor(int currentIndex) {
    int newIndex = Random().nextInt(8);

    if (newIndex == currentIndex) {
      newIndex = Random().nextInt(8);
    }
    emit(ColorIndexHomeApp(colorIndex: newIndex));
  }

  void toTransferPage(BuildContext context) {
    GoRouter.of(context)
        .go(Uri(path: "/${Approute.transferPage}").toString());
  }
  void toRewardPage(BuildContext context) {
    GoRouter.of(context)
        .go(Uri(path: "/${Approute.rewardPage}").toString());
  }

  void toUserPage(BuildContext context) {
    GoRouter.of(context)
        .go(Uri(path: "/${Approute.userPage}").toString());
  }
}
