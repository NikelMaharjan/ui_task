import 'package:flutter/material.dart';
import 'package:intern_task/Dashboard/service_page.dart';
import 'package:intern_task/constants/color.dart';


class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});


  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}


class _DashBoardPageState extends State<DashBoardPage> {

  int currentIndex = 1;
  final screens  = [
    const Center(child: Text("Empty"),),
    const ServicePage(),
    const Center(child: Text("Empty"),),
    const Center(child: Text("Empty"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomNavigationBar(

            elevation: 20,
            selectedItemColor: AppColor.purple,
            unselectedItemColor: AppColor.grey,
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              _buildBottomNavigationBarItem(icon: "assets/png/today.png", label: "Today"),
              _buildBottomNavigationBarItem(icon: "assets/png/service.png", label: "Service"),
              _buildBottomNavigationBarItem(icon: "assets/png/chat.png", label: "Chats"),
            ],
          ),
        ),

        body: screens[currentIndex]
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({required String label, required String icon}) {
    return BottomNavigationBarItem(
      backgroundColor: AppColor.white,
      icon: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(icon),
      ),
      label: label,
    );
  }

}