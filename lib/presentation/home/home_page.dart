import 'package:flutter/material.dart';
import 'package:program_ando/presentation/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      // Poner el tabBar aqui, chamba de Manuel
      // PD: se puede usar el tabbar fuera del appbar, es como un widget cualquiera
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }
}