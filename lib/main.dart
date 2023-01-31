import 'package:flutter/material.dart';
import 'package:mvvm_with_api/view/defscrren.dart';

void main()=> runApp(const MmvmWithAPI());

class MmvmWithAPI extends StatelessWidget {
  const MmvmWithAPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DefScreen(),
    );
  }
}
