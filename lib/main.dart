import 'package:flutter/material.dart';
import 'package:mvvm_with_api/view/def_screen.dart';

void main() => runApp(const MvvmWithAPI());

class MvvmWithAPI extends StatelessWidget {
  const MvvmWithAPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefScreen(),
           // paddtest()
        //
        );
  }
}



//------------------------------------- هنا تطبيق ع قصة ال padding ----------------------------
//
// class paddtest extends StatelessWidget {
//   const paddtest({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
//         child: Column(
//           children: [
//             Container(
//               height: 20,
//               width: 150,
//               color: Colors.orange,
//             ),
//             Container(
//               height: 20,
//               width: 150,
//               color: Colors.orange,
//             ),
//             Container(
//               height: 20,
//               width: 150,
//               color: Colors.orange,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Transform.translate(
//                 offset: const Offset(-20.0, 0.0),
//                 child: Container(
//                   width: 150,
//                   height: 150,
//                   color: Colors.blue,
//                 )),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 20,
//               width: 150,
//               color: Colors.orange,
//             ),
//             Container(
//               height: 20,
//               width: 150,
//               color: Colors.orange,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
