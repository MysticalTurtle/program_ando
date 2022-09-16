import 'package:flutter/material.dart';
import 'package:program_ando/presentation/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      initialIndex: 1,
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ProgramAndo'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.star),
              tooltip: 'Trofeos',
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.crop_square_outlined),
              tooltip: 'Trofeos',
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.lens_rounded),
              color: Colors.white,
              tooltip: 'Usuario',
              onPressed: (){},
            )
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.workspace_premium_outlined),
                text: 'Logros',
              ),
              Tab(
                icon: Icon(Icons.gps_fixed_outlined),
                text: 'Desafios',
              ),
            ]
          )
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text('Logros'),
            ),
            Center(
              child: Text('Desafios'),
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: customAppBar(context),
    //   // Poner el tabBar aqui, chamba de Manuel
    //   // PD: se puede usar el tabbar fuera del appbar, es como un widget cualquiera
    //   body: const TabBarView(
    //     children: <Widget>[
    //       Center(
    //         child: Text('Logros'),
    //       ),
    //       Center(
    //         child: Text('Desafios'),
    //       ),
    //     ]
    //   ),
    // );
  }
}