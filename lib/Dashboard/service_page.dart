import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intern_task/common/app_bar.dart';
import 'package:intern_task/constants/color.dart';
import 'package:intern_task/constants/font.dart';
import 'package:intern_task/constants/gap.dart';
import 'package:intern_task/models/outlines.dart';
import 'package:intern_task/models/services.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}



class _ServicePageState extends State<ServicePage> {
  int _selectedPageIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget.getAppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "Hello, Suvaye Tech",
                  style: AppFont.helloFont,
                ),

                Sizes.gahH25,

                _buidRowSection(text: "Services"),

                Sizes.gapH10,

                _buildPageView(),

                Sizes.gahH25,

                _buidRowSection(text: "Outline"),

                Sizes.gapH10,

                _buildServices(),
              ],
            ),
          ),
        )
    );
  }

  GridView _buildServices() {
    return GridView.count(
                shrinkWrap: true,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: (0.8 / .36),
                children: outlines
                    .map((e) => Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                          color: e.color,
                        ),
                  child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Image.asset(e.icon),
                      ),
                      // SvgPicture.asset(
                      //   e.svgIcon
                      // ),
                      Text(e.text, style: AppFont.medium.copyWith(fontWeight: FontWeight.w600),),
                    ],
                  ),
                ),
                ).toList(),
              );
  }

  Widget _buildPageView() {
    return Column(
      children: [
        Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: AppColor.lightGreen,
                    ),
                    height: 130,
                    child: PageView.builder(
                      controller: _pageController,
                        itemCount: services.length,
                        onPageChanged: (int page) {
                          setState(() {
                            _selectedPageIndex = page;
                          });
                        },
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(services[index].title, style: AppFont.semiBold.copyWith(fontSize: 16),),
                                Text(services[index].description, style: const TextStyle(fontSize: 16),),
                              ],
                            ),
                          );
                        }
                    ),
                  ),
        Sizes.gapH10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  _buildPageIndicator(),
        ),
        Sizes.gapH20,
      ],
    );
  }



  Widget _indicator(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 5,
      width: 5,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? AppColor.grey : AppColor.lightGrey,
      ),

    );
  }

  Widget _buidRowSection({required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppFont.semiBold,
        ),
        _buildTextButton()
      ],
    );
  }

  Widget _buildTextButton() {
    return TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero
        ),
        onPressed: (){}, child: Row(
        children: [
         Text("See More", style: AppFont.semiBold.copyWith(fontSize: 14, color: AppColor.green)),
         Icon(CupertinoIcons.chevron_right, color: AppColor.green, size: 20,)

    ],

    ));

  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < services.length; i++) {
      list.add(i == _selectedPageIndex ? _indicator(true) : _indicator(false));
    }
    return list;
  }

}
