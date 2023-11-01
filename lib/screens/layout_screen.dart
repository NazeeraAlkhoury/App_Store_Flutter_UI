import 'package:accessories_store/core/global/routes/route_generator.dart';
import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/screens/favorite_screen.dart';


import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  // List<Widget> listBar = [
  //   IconButton(
  //     focusColor: AppColors.primaryColor,
  //     onPressed: () {},
  //     icon: Icon(Icons.home),
  //   ),
  //   IconButton(
  //     onPressed: () {},
  //     icon: Icon(Icons.favorite_border),
  //   ),
  //   IconButton(
  //     onPressed: () {},
  //     icon: Icon(Icons.shopping_cart_outlined),
  //   ),
  //   IconButton(
  //     onPressed: () {},
  //     icon: Icon(Icons.person_outline),
  //   ),

  // ];
  List<Widget> screensList = [
    // HomeScreen(),
    Navigator(
      initialRoute: Routes.homeRoute,
      onGenerateRoute: ((settings) => RouteGenerator.getRoutes(settings)),
    ),
    const FavoriteScreen(),
    // MyCartScreen(),
    // MyProfileScreen(),
    Navigator(
      initialRoute: Routes.cartRoute,
      onGenerateRoute: ((RouteSettings settings) =>
          RouteGenerator.getRoutes(settings)),
    ),
    Navigator(
      initialRoute: Routes.profileRoute,
      onGenerateRoute: ((RouteSettings settings) =>
          RouteGenerator.getRoutes(settings)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[currentIndex],
      bottomNavigationBar: getBottomNav(),
    );
  }

  Widget getBottomNav() => Padding(
        padding: const EdgeInsets.only(
          bottom: 15,
          left: 15,
          right: 15,
          top: 10,
        ),
        child: Container(
          width: 309,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.scaffoldColor,
            border: Border.all(
              color: AppColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: screensList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child:
                  // IconButton(
                  //   icon:
                  InkWell(
                child: Icon(
                  color: index == currentIndex
                      ? AppColors.primaryColor
                      : AppColors.tertiaryColor,
                  index == 0
                      ? Icons.home
                      : index == 1
                          ? Icons.favorite_border
                          : index == 2
                              ? Icons.shopping_cart_outlined
                              : Icons.person_outline,
                ),
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      );
}
