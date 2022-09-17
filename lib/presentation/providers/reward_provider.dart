import 'package:flutter/cupertino.dart';
import 'package:program_ando/data/user_repository.dart';
import 'package:program_ando/domain/entities/reward.dart';

class RewardProvider extends ChangeNotifier {
  int nivel = 1;
  static Future<List<Reward>> getRewards({idUser = 0}) async {
    List<Reward> reward =
        await RewardRepositoryImpl().listReward(idUser: idUser);
    return reward;
  }
}
