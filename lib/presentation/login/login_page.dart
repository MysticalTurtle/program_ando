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
        body: const Center(
          child: Text('Login Page'),
        ),
      ),
    );
  }
}
