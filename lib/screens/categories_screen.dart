// import 'package:accessories_store/core/global/theme/app_colors.dart';
// import 'package:accessories_store/core/global/theme/app_text_style.dart';
// import 'package:accessories_store/core/utils/app_string.dart';
// import 'package:accessories_store/screens/home_screen.dart';
// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class CategoriesScreen extends StatefulWidget {
//   const CategoriesScreen({super.key});

//   @override
//   State<CategoriesScreen> createState() => _CategoriesScreenState();
// }

// class _CategoriesScreenState extends State<CategoriesScreen> {
//   List<String> categoryName = [
//     'All',
//     'Bags',
//     'Rings',
//     'necklace',
//     'earring',
//   ];
//   List<String> image1 = [
//     'assets/images/B1.png',
//     'assets/images/B2.png',
//     'assets/images/B3.png',
//     'assets/images/B1.png',
//     'assets/images/B2.png',
//     'assets/images/B3.png',
//     'assets/images/B1.png',
//     'assets/images/B2.png',
//     'assets/images/B3.png',
//     'assets/images/B1.png',
//     'assets/images/B2.png',
//     'assets/images/B3.png',
//   ];
//   List<String> cat1 = [
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//     'Bags',
//   ];
//   List<String> colorproduct1 = [
//     'Loria',
//     'Antelope',
//     'gray',
//     'Loria',
//     'Antelope',
//     'gray',
//     'Loria',
//     'Antelope',
//     'gray',
//     'Loria',
//     'Antelope',
//     'gray',
//   ];
//   List<String> price1 = [
//     '100.90',
//     '200.00',
//     '150.00',
//     '100.90',
//     '200.00',
//     '150.00',
//     '100.90',
//     '200.00',
//     '150.00',
//     '100.90',
//     '200.00',
//     '150.00',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         physics: const NeverScrollableScrollPhysics(),
//         slivers: [
//           SliverPersistentHeader(
//             delegate: MySliverHeader(),
//             pinned: true,
//           ),
//           SliverToBoxAdapter(
//             child: SizedBox(
//               height: 505,
//               // height: 750,
//               child: DefaultTabController(
//                 length: categoryName.length,
//                 initialIndex: 0,
//                 child: Column(
//                   children: [
//                     ButtonsTabBar(
//                       physics: const NeverScrollableScrollPhysics(),
//                       backgroundColor: AppColors.secondaryColor,
//                       unselectedBackgroundColor: Colors.white,
//                       labelStyle: getRegularStyle(
//                         color: Colors.white,
//                         fontSize: 13,
//                       ),
//                       height: 40,
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 16,
//                         vertical: 4,
//                       ),
//                       unselectedLabelStyle: getRegularStyle(
//                         color: AppColors.secondaryColor,
//                         fontSize: 13,
//                       ),
//                       borderWidth: 1,
//                       unselectedBorderColor: AppColors.secondaryColor,
//                       borderColor: AppColors.secondaryColor,
//                       radius: 20,
//                       tabs: [
//                         Tab(
//                           text: categoryName[0],
//                         ),
//                         Tab(
//                           text: categoryName[1],
//                         ),
//                         Tab(
//                           text: categoryName[2],
//                         ),
//                         Tab(
//                           text: categoryName[3],
//                         ),
//                         Tab(
//                           text: categoryName[4],
//                         ),
//                       ],
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 15,
//                         ),
//                         child: TabBarView(
//                           physics: const BouncingScrollPhysics(),
//                           //   physics: NeverScrollableScrollPhysics(),
//                           children: [
//                             GridView.builder(
//                               //  shrinkWrap: ,

//                               physics: const NeverScrollableScrollPhysics(),
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 3,
//                                 childAspectRatio: 1 / 1.2,
//                               ),
//                               itemCount: cat1.length,
//                               itemBuilder: (context, index) => Product(
//                                 image: image1[index],
//                                 category: cat1[index],
//                                 productColor: colorproduct1[index],
//                                 price: price1[index],
//                               ),
//                             ),
//                             // SliverGrid(
//                             //   delegate: SliverChildBuilderDelegate(
//                             //     (context, index) => Product(
//                             //       image: image1[index],
//                             //       category: cat1[index],
//                             //       productColor: colorproduct1[index],
//                             //       price: price1[index],
//                             //     ),
//                             //   ),
//                             //   gridDelegate:
//                             //       SliverGridDelegateWithFixedCrossAxisCount(
//                             //     crossAxisCount: 3,
//                             //     childAspectRatio: 1 / 1.2,
//                             //   ),
//                             // ),
//                             GridView.builder(
//                               //  shrinkWrap: ,
//                               physics: const NeverScrollableScrollPhysics(),
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 3,
//                                 childAspectRatio: 1 / 1.2,
//                               ),
//                               itemCount: cat1.length,
//                               itemBuilder: (context, index) => Product(
//                                 image: image1[index],
//                                 category: cat1[index],
//                                 productColor: colorproduct1[index],
//                                 price: price1[index],
//                               ),
//                             ),
//                             GridView.builder(
//                               //  shrinkWrap: ,
//                               physics: const NeverScrollableScrollPhysics(),
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 3,
//                                 childAspectRatio: 1 / 1.2,
//                               ),
//                               itemCount: cat1.length,
//                               itemBuilder: (context, index) => Product(
//                                 image: image1[index],
//                                 category: cat1[index],
//                                 productColor: colorproduct1[index],
//                                 price: price1[index],
//                               ),
//                             ),
//                             GridView.builder(
//                               //  shrinkWrap: ,
//                               physics: const NeverScrollableScrollPhysics(),
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 3,
//                                 childAspectRatio: 1 / 1.2,
//                               ),
//                               itemCount: cat1.length,
//                               itemBuilder: (context, index) => Product(
//                                 image: image1[index],
//                                 category: cat1[index],
//                                 productColor: colorproduct1[index],
//                                 price: price1[index],
//                               ),
//                             ),
//                             GridView.builder(
//                               //  shrinkWrap: ,
//                               physics: const NeverScrollableScrollPhysics(),
//                               gridDelegate:
//                                   const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 3,
//                                 childAspectRatio: 1 / 1.2,
//                               ),
//                               itemCount: cat1.length,
//                               itemBuilder: (context, index) => Product(
//                                 image: image1[index],
//                                 category: cat1[index],
//                                 productColor: colorproduct1[index],
//                                 price: price1[index],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: TextButton(
//                 onPressed: (() {}),
//                 child: const Text(
//                   AppString.seeMore,
//                 )),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MySliverHeader extends SliverPersistentHeaderDelegate {
//   var searchController = TextEditingController();
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         top: 35,
//         right: 15,
//         left: 15,
//       ),
//       child: SizedBox(
//         height: 185,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 20,
//                       ),
//                       child: SvgPicture.asset('assets/icons/drawer.svg'),
//                     ),
//                     Text(
//                       'Categories, Bags',
//                       style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                             color: AppColors.tertiaryColor,
//                           ),
//                     ),
//                   ],
//                 ),
//                 const Spacer(),
//                 Stack(alignment: Alignment.center, children: [
//                   Image.asset(
//                     'assets/images/profile1.png',
//                   ),
//                   SvgPicture.asset('assets/images/round1.svg'),
//                   SvgPicture.asset(
//                     'assets/images/round2.svg',
//                   ),
//                 ]),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 10,
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(
//                     height: 38,
//                     width: 285,
//                     child: Theme(
//                       data: ThemeData(
//                         inputDecorationTheme: InputDecorationTheme(
//                             fillColor: AppColors.tertiaryColor.withOpacity(
//                               .12,
//                             ),
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(
//                                 12,
//                               ),
//                               borderSide: BorderSide.none,
//                             ),
//                             hintStyle: Theme.of(context)
//                                 .textTheme
//                                 .titleMedium!
//                                 .copyWith(
//                                   color:
//                                       AppColors.tertiaryColor.withOpacity(.3),
//                                 )),
//                       ),
//                       child: TextFormField(
//                         controller: searchController,
//                         decoration: InputDecoration(
//                           hintText: AppString.searchProduct,
//                           suffixIcon: Padding(
//                             padding: const EdgeInsets.all(7.0),
//                             child: SvgPicture.asset(
//                               'assets/icons/microphone.svg',
//                             ),
//                           ),
//                           prefixIcon: Padding(
//                             padding: const EdgeInsets.all(7.0),
//                             child: SvgPicture.asset(
//                                 'assets/icons/magnifyingglass.svg'),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   Theme(
//                     data: ThemeData(
//                       elevatedButtonTheme: ElevatedButtonThemeData(
//                         style: ElevatedButton.styleFrom(
//                           minimumSize: const Size(43, 43),
//                           alignment: Alignment.centerRight,
//                           elevation: 6,
//                           backgroundColor: AppColors.tertiaryColor,
//                           shadowColor: AppColors.tertiaryColor,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(
//                               14,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         //Navigator to filter screen
//                       },
//                       child: SvgPicture.asset(
//                         'assets/icons/filter.svg',
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   double get maxExtent => 200;

//   @override
//   double get minExtent => 200;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }

// ignore_for_file: prefer_final_fields, unused_field

import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';

import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/screens/home_screen.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  var searchController = TextEditingController();

  bool isButton = true;
  List<String> categoryName = [
    'All',
    'Bags',
    'Rings',
    'necklace',
    'earring',
  ];

  //////
  List<String> img = [
    'assets/images/B1.png',
    'assets/images/B2.png',
    'assets/images/B3.png',
    'assets/images/B1.png',
    'assets/images/B2.png',
    'assets/images/B3.png',
    'assets/images/B1.png',
    'assets/images/B2.png',
    'assets/images/B3.png',
  ];
  List<String> cat = [
    'Bags',
    'Bags',
    'Bags',
    'Bags',
    'Bags',
    'Bags',
    'Bags',
    'Bags',
    'Bags',
  ];
  List<String> colorprod = [
    'Loria',
    'Antelope',
    'gray',
    'Loria',
    'Antelope',
    'gray',
    'Loria',
    'Antelope',
    'gray',
    'Loria',
    'Antelope',
    'gray',
  ];
  List<String> pric = [
    '100.90',
    '200.00',
    '150.00',
    '100.90',
    '200.00',
    '150.00',
    '100.90',
    '200.00',
    '150.00',
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: GetBottomBar(
      //   currentndex: _currentIndex,
      //   onTab: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                right: 15,
                left: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            child: SvgPicture.asset('assets/icons/drawer.svg'),
                          ),
                          Text(
                            'Welcome, Ranim',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.tertiaryColor,
                                ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Stack(alignment: Alignment.center, children: [
                        Image.asset(
                          'assets/images/profile1.png',
                        ),
                        SvgPicture.asset('assets/images/round1.svg'),
                        SvgPicture.asset(
                          'assets/images/round2.svg',
                        ),
                      ]),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 38,
                          width: 285,
                          child: Theme(
                            data: ThemeData(
                              inputDecorationTheme: InputDecorationTheme(
                                  fillColor:
                                      AppColors.tertiaryColor.withOpacity(
                                    .12,
                                  ),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      12,
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: AppColors.tertiaryColor
                                            .withOpacity(.3),
                                      )),
                            ),
                            child: TextFormField(
                              controller: searchController,
                              decoration: InputDecoration(
                                hintText: AppString.searchProduct,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: SvgPicture.asset(
                                    'assets/icons/microphone.svg',
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(7.0),
                                  child: SvgPicture.asset(
                                      'assets/icons/magnifyingglass.svg'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Theme(
                          data: ThemeData(
                            elevatedButtonTheme: ElevatedButtonThemeData(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(43, 43),
                                alignment: Alignment.centerRight,
                                elevation: 6,
                                backgroundColor: AppColors.tertiaryColor,
                                shadowColor: AppColors.tertiaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                enableDrag: true,
                                context: context,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(
                                      15,
                                    ),
                                  ),
                                ),
                                barrierColor:
                                    AppColors.primaryColor.withOpacity(.4),
                                builder: (context) => const Filter(),
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/icons/filter.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            expandedHeight: 160,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 360,
              child: DefaultTabController(
                length: categoryName.length,
                initialIndex: 0,
                child: Column(
                  children: [
                    ButtonsTabBar(
                      physics: const NeverScrollableScrollPhysics(),
                      backgroundColor: AppColors.secondaryColor,
                      unselectedBackgroundColor: Colors.white,
                      labelStyle: getRegularStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      height: 40,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      unselectedLabelStyle: getRegularStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 13,
                      ),
                      borderWidth: 1,
                      unselectedBorderColor: AppColors.secondaryColor,
                      borderColor: AppColors.secondaryColor,
                      radius: 20,
                      tabs: [
                        Tab(
                          text: categoryName[0],
                        ),
                        Tab(
                          text: categoryName[1],
                        ),
                        Tab(
                          text: categoryName[2],
                        ),
                        Tab(
                          text: categoryName[3],
                        ),
                        Tab(
                          text: categoryName[4],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TabBarView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            GridView.builder(
                              //  physics: BouncingScrollPhysics(),
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1 / 1.2,
                              ),
                              itemCount: cat.length,
                              itemBuilder: (context, index) => Product(
                                image: img[index],
                                category: cat[index],
                                productColor: colorprod[index],
                                price: pric[index],
                              ),
                            ),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1 / 1.2,
                              ),
                              itemCount: cat.length,
                              itemBuilder: (context, index) => Product(
                                image: img[index],
                                category: cat[index],
                                productColor: colorprod[index],
                                price: pric[index],
                              ),
                            ),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1 / 1.2,
                              ),
                              itemCount: cat.length,
                              itemBuilder: (context, index) => Product(
                                image: img[index],
                                category: cat[index],
                                productColor: colorprod[index],
                                price: pric[index],
                              ),
                            ),
                            GridView.builder(
                              //  shrinkWrap: ,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1 / 1.2,
                              ),
                              itemCount: cat.length,
                              itemBuilder: (context, index) => Product(
                                image: img[index],
                                category: cat[index],
                                productColor: colorprod[index],
                                price: pric[index],
                              ),
                            ),
                            GridView.builder(
                              //  shrinkWrap: ,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1 / 1.2,
                              ),
                              itemCount: cat.length,
                              itemBuilder: (context, index) => Product(
                                image: img[index],
                                category: cat[index],
                                productColor: colorprod[index],
                                price: pric[index],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                const Spacer(),
                InkWell(
                  onTap: (() {
                    //  Navigator.pushNamed(context, Routes.categoriesRoute);
                  }),
                  child: Text(
                    AppString.seeMore,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: AppFontSize.s10,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
