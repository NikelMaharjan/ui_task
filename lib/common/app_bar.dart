



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AppBarWidget {
  static getAppBar() {
   return AppBar(
     backgroundColor: Colors.white,
     elevation: 0,
     title:  Text("Suvaye"),
     leading: Padding(
       padding: const EdgeInsets.only(left: 20.0),
       child:

           // SvgPicture.asset(
           //     'assets/svg/logo.svg',
           //     semanticsLabel: 'A red up arrow
           // ),

       Image.asset(
         'assets/png/logo.png',
       ),
     ),
     actions: [
       IconButton(
           padding: const EdgeInsets.only(right: 28),
           onPressed: () {},
           icon:
           SvgPicture.asset('assets/svg/bell.svg'),

           // const Stack(
           //   clipBehavior: Clip.none,
           //   children: [
           //     Icon(
           //       CupertinoIcons.bell,
           //       color: Colors.black,
           //     ),
           //     Positioned(
           //         top: 0,
           //         right: 0,
           //         child: Icon(Icons.circle, color: Colors.red, size: 10,)
           //     ),
           //   ],
           // )
       )
     ],
   );
  }

}