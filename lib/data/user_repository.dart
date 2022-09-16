import 'package:program_ando/domain/entities/reward.dart';

abstract class RewardRepository {
  Future<Reward> listReward({
    required String username,
    required String password,
  });
}

class RewardRepositoryImpl extends RewardRepository {
  @override
  Future<Reward> listReward({
    required String username,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return Reward(
        description: 'Primera descripticon',
        image: 'Mi imagen',
        level: 1,
        name: 'nombre');
  }
}
