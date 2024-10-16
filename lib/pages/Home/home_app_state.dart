part of 'home_app_cubit.dart';

@immutable
sealed class HomeAppState {}

final class HomeAppInitial extends HomeAppState {}

final class ColorIndexHomeApp extends HomeAppState {
  final int colorIndex;
  ColorIndexHomeApp({required this.colorIndex});
}
