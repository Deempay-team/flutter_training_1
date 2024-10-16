import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'rewards_state.dart';

class RewardsCubit extends Cubit<RewardsState> {
  RewardsCubit() : super(RewardsInitial());
}
