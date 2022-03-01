import 'package:flutter/material.dart';
import 'package:login_with_mobx/feature/pokemon/view/pokemon_view.dart';

import 'feature/login/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login with Mobx',
      debugShowCheckedModeBanner: false,
      home: PokemonView(),
    );
  }
}
