import 'package:flutter/material.dart';
import 'package:program_ando/presentation/widgets/custom_appbar.dart';

/// Esta pantalla es de Rodrigo
class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: const Center(
        child: Text('ChallengesPage'),
      ),
    );
  }
}