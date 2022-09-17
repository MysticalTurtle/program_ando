import 'package:flutter/material.dart';
import 'package:program_ando/presentation/widgets/custom_appbar.dart';
import 'image_card.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: customAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 12),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      FillImageCard(
                        width: 350,
                        heightImage: 180,
                        imageProvider: AssetImage('assets/category/if.jpg'),
                        tags: [_tag('Condicionales', () {})],
                        title: _title1(),
                        description: _content1(),
                        footer: _footer1(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      FillImageCard(
                        width: 350,
                        heightImage: 180,
                        imageProvider: AssetImage('assets/category/loop.jpg'),
                        tags: [_tag('Bucles', () {})],
                        title: _title2(),
                        description: _content2(),
                        footer: _footer2(),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    ));
  }

  Widget _title1({Color? color}) {
    return Text(
      'IF & IF-ELSE',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: color),
    );
  }

  Widget _title2({Color? color}) {
    return Text(
      'For & While',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: color),
    );
  }

  Widget _content1({Color? color}) {
    return Text(
      'Conoce las sentencias condicionales. ¡Tú eliges qué hacer!',
      style: TextStyle(color: color),
    );
  }

  Widget _content2({Color? color}) {
    return Text(
      'Conoce las estructuras de control. ¿Cúantas veces repetir una acción?',
      style: TextStyle(color: color),
    );
  }

  Widget _footer1({Color? color}) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/category/estrella.png',
          ),
          radius: 12,
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
            child: Text(
          'Nivel 1',
          style: TextStyle(color: color),
        )),
        IconButton(onPressed: () {}, icon: Icon(Icons.play_circle))
      ],
    );
  }

  Widget _footer2({Color? color}) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/category/estrella.png',
          ),
          radius: 12,
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
            child: Text(
          'Nivel 2',
          style: TextStyle(color: color),
        )),
        IconButton(onPressed: () {}, icon: Icon(Icons.play_circle))
      ],
    );
  }

  Widget _tag(String tag, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6), color: Colors.green),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Text(
          tag,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
