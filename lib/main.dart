import 'package:flutter/material.dart';
import 'package:mvvm_with_api/view/def_screen.dart';

void main() => runApp(const MvvmWithAPI());

class MvvmWithAPI extends StatelessWidget {
  const MvvmWithAPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefScreen(),
    );
  }
}



