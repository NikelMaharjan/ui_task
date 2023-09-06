import 'package:flutter/material.dart';
import 'package:intern_task/dashboard_page.dart';

void main(){
  
  runApp(const Home());
  
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
