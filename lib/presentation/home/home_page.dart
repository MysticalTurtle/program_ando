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
          backgroundColor: Colors.blue.shade500,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.star),
              color: Colors.yellow,
              tooltip: 'Trofeos',
              onPressed: (){},
            ),
            const Center(
              child: Text('2',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              )
              ,
            ),
            Container(
              height: 35.0,
              width: 35.0,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('M'),
              ),
            )
            // IconButton(
            //   icon: const Icon(Icons.lens_rounded),
            //   color: Colors.white,
            //   tooltip: 'Usuario',
            //   onPressed: (){},
            // ),
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