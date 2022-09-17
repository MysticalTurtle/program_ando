import 'package:flutter/material.dart';
import 'package:program_ando/presentation/widgets/custom_appbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: customAppBar(context),
          body: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200.0,
                        width: 200.0,
                        child: const Text(
                          'Vamos a empezar',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(7),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(7),
                        child: const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: Icon(Icons.remove_red_eye_rounded),
                              hintText: 'Password',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        minWidth: 600.0,
                        height: 50.0,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'ACCEDER',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
