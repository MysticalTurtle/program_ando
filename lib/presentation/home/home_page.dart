import 'package:flutter/material.dart';
import 'package:program_ando/presentation/home/challenges/challenges_page.dart';
import 'package:program_ando/presentation/home/rewards/rewards_page.dart';
import 'package:program_ando/presentation/providers/reward_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    RewardProvider rewardProvider = Provider.of<RewardProvider>(context);
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('ProgramAndo'),
            backgroundColor: Colors.blue.shade500,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.star),
                color: Colors.yellow,
                tooltip: 'Trofeos',
                onPressed: () {},
              ),
              Center(
                child: Text(
                  rewardProvider.nivel.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.lens_rounded),
                color: Colors.white,
                tooltip: 'Usuario',
                onPressed: () {},
              ),
            ],
            bottom: const TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.gps_fixed_outlined),
                text: 'Desafios',
              ),
              Tab(
                icon: Icon(Icons.workspace_premium_outlined),
                text: 'Logros',
              ),
            ])),
        body: const TabBarView(
          children: <Widget>[ChallengesPage(), RewardsPage()],
        ),
      ),
    );
  }
}
