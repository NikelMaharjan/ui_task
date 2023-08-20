

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task/Dashboard/service_page.dart';
import 'package:intern_task/dashboard_page.dart';

void main(){
  
  runApp(Home());
  
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
          fontFamily: 'Inter',
          useMaterial3: true
      ),
    debugShowCheckedModeBanner: false,
     home: DashBoardPage(),
    );
  }
}
