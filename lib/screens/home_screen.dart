// ignore_for_file: avoid_print

import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> gender = [
    AppString.men,
    AppString.women,
    AppString.both,
  ];
  List<bool> isSelected = [
    false,
    false,
    false,
  ];
  var searchController = TextEditingController();
  List<Widget> banners = [
    Image.asset(
      AppAssets.banner,
    ),
  ];
  bool isButton = true;
  List<String> categoryName = [
    'All',
    'Bags',
    'Rings',
    'necklace',
    'earring',
  ];

  //////
  List<String> image1 = [
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
  List<String> cat1 = [
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
  List<String> colorproduct1 = [
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
  List<String> price1 = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              // _showBottomSheet(context);
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
                  // CarouselSlider(
                  //     items: banners,
                  //     options: CarouselOptions(
                  //       height: 190,

                  //       // aspectRatio: 16 / 9,

                  //       // initialPage: 0,
                  //       enableInfiniteScroll: true,
                  //       reverse: false,
                  //       autoPlay: true,
                  //       autoPlayInterval: Duration(seconds: 3),
                  //       autoPlayAnimationDuration: Duration(milliseconds: 800),
                  //       autoPlayCurve: Curves.fastOutSlowIn,
                  //       enlargeCenterPage: true,
                  //       //enlargeFactor: 0.3,
                  //       //onPageChanged: callbackFunction,
                  //       scrollDirection: Axis.horizontal,
                  //     ))
                ],
              ),
            ),
            expandedHeight: 160,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              width: double.infinity,
              child: Image.asset(
                AppAssets.banner,
                fit: BoxFit.cover,
              ),
            ),
            // child: CarouselSlider(items: [], options: ,),
            // SizedBox(
            //   height: 150,
            //   child: Image.asset(
            //     AppAssets.banner,

            //   ),
            // ),
          ),
          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.only(
          //       left: 10,
          //     ),
          //     child: SizedBox(
          //       height: 32,
          //       child: ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         itemBuilder: (context, index) => Padding(
          //           padding: const EdgeInsets.only(
          //             right: 12,
          //           ),
          //           child: OutlinedButton(
          //             style: OutlinedButton.styleFrom(
          //               //backgroundColor:  ,
          //               side: BorderSide(
          //                 color: AppColors.secondaryColor,
          //               ),
          //               textStyle: getRegularStyle(
          //                 color: AppColors.secondaryColor,
          //                 fontSize: 13,
          //               ),

          //               padding: EdgeInsets.symmetric(
          //                 vertical: 9,
          //                 horizontal: 4,
          //               ),
          //               shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20),
          //               ),
          //             ),
          //             onPressed: () {},
          //             child: Text(
          //               categoryName[index],
          //             ),
          //           ),
          //         ),
          //         itemCount: categoryName.length,
          //       ),
          //     ),
          //   ),
          // ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
              width: double.infinity,
            ),
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
                              itemCount: cat1.length,
                              itemBuilder: (context, index) => Product(
                                image: image1[index],
                                category: cat1[index],
                                productColor: colorproduct1[index],
                                price: price1[index],
                              ),
                            ),
                            // SliverGrid(
                            //   delegate: SliverChildBuilderDelegate(
                            //     (context, index) => Product(
                            //       image: image1[index],
                            //       category: cat1[index],
                            //       productColor: colorproduct1[index],
                            //       price: price1[index],
                            //     ),
                            //   ),
                            //   gridDelegate:
                            //       SliverGridDelegateWithFixedCrossAxisCount(
                            //     crossAxisCount: 3,
                            //     childAspectRatio: 1 / 1.2,
                            //   ),
                            // ),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1 / 1.2,
                              ),
                              itemCount: cat1.length,
                              itemBuilder: (context, index) => Product(
                                image: image1[index],
                                category: cat1[index],
                                productColor: colorproduct1[index],
                                price: price1[index],
                              ),
                            ),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1 / 1.2,
                              ),
                              itemCount: cat1.length,
                              itemBuilder: (context, index) => Product(
                                image: image1[index],
                                category: cat1[index],
                                productColor: colorproduct1[index],
                                price: price1[index],
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
                              itemCount: cat1.length,
                              itemBuilder: (context, index) => Product(
                                image: image1[index],
                                category: cat1[index],
                                productColor: colorproduct1[index],
                                price: price1[index],
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
                              itemCount: cat1.length,
                              itemBuilder: (context, index) => Product(
                                image: image1[index],
                                category: cat1[index],
                                productColor: colorproduct1[index],
                                price: price1[index],
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
                    Navigator.pushNamed(
                      context,
                      Routes.categoriesRoute,
                    );
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
            // TextButton(
            //   onPressed: () {},
            //   child: Text(
            //     AppString.seeMore,
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  final String image;
  final String category;
  final String productColor;
  final String price;

  const Product({
    super.key,
    required this.image,
    required this.category,
    required this.productColor,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: getRegulerPoppins(
                          color: AppColors.catColor,
                          fontSize: 9,
                        ),
                      ),
                      Text(
                        productColor,
                        style: getRegulerPoppins(
                          color: AppColors.brandColor,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.favorite_border,
                  size: 15,
                  color: AppColors.secondaryColor,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 3,
            ),
            child: Row(
              children: [
                // Text('\$',
                //     style: getRegularStyle(
                //       color: AppColors.secondaryColor,
                //       fontSize: 9,
                //     )),
                Expanded(
                  child: Text(
                    '\$ $price',
                    style: getRegularStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 9,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  AppAssets.farm,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<String> gender = [
    AppString.men,
    AppString.women,
    AppString.both,
  ];
  List<bool> isSelected = [
    false,
    false,
    false,
  ];
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  List<bool> isCheck = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<Color> colorList = [
    AppColors.primaryColor,
    AppColors.secondaryColor,
    HexColor('#F8B6C3'),
    AppColors.quaternaryColor,
    AppColors.tertiaryColor,
    HexColor('#8F92A1'),
  ];
  List<double> items = [5, 10, 15];
  double? select;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 615.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.secondaryColor.withOpacity(0.1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 15,
              ),
              child: Text(
                AppString.gender,
                style: getBoldStyleDMSans(
                        color: AppColors.tertiaryColor,
                        fontSize: AppFontSize.s16)
                    .copyWith(
                  letterSpacing: -0.4,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 44,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: gender.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: Theme(
                      data: ThemeData(
                        elevatedButtonTheme: ElevatedButtonThemeData(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(95, 44),
                            // textStyle: getRegularStyle(
                            //   color: isSelected[index]
                            //       ? AppColors.elevtextColor
                            //       : AppColors.tertiaryColor,
                            //   fontSize: AppFontSize.s15,
                            // ),
                            alignment: Alignment.center,
                            elevation: AppSize.v0,
                            backgroundColor: isSelected[index]
                                ? AppColors.primaryColor
                                : AppColors.secondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i < isSelected.length; i++) {
                              if (i == index) {
                                isSelected[i] = !isSelected[i];
                                print(
                                  isSelected[i].toString(),
                                );
                              } else {
                                isSelected[i] = false;
                              }
                            }
                          });
                        },
                        child: Text(
                          gender[index],
                          style: getRegularStyle(
                            color: isSelected[index]
                                ? AppColors.elevtextColor
                                : AppColors.tertiaryColor,
                            fontSize: AppFontSize.s15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppString.priceRate,
                style: getBoldStyleDMSans(
                        color: AppColors.tertiaryColor,
                        fontSize: AppFontSize.s16)
                    .copyWith(
                  letterSpacing: -0.4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
              ),
              child: SizedBox(
                height: 80,
                child: Stack(
                  children: [
                    Image.asset(
                      AppAssets.slider,
                    ),
                    RangeSlider(
                      inactiveColor: AppColors.secondaryColor.withOpacity(0.02),
                      values: _currentRangeValues,
                      min: 0,
                      max: 100,
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                      activeColor: AppColors.tertiaryColor,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    height: 44,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      color: AppColors.secondaryColor.withOpacity(
                        0.2,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<double>(
                        iconEnabledColor: AppColors.whiteColor,
                        isExpanded: true,
                        value: select,
                        hint: Text(
                          AppString.min,
                          style: getBoldStyleDMSans(
                            fontSize: 17,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        items: items
                            .map(
                              (element) => DropdownMenuItem(
                                value: element,
                                child: Text(
                                  element.toString(),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (value) => setState(() {
                          select = value;
                        }),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  height: 44,
                  width: 145,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    color: AppColors.secondaryColor.withOpacity(
                      0.2,
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<double>(
                      iconEnabledColor: AppColors.whiteColor,
                      isExpanded: true,
                      value: select,
                      hint: Text(
                        AppString.max,
                        style: getBoldStyleDMSans(
                          fontSize: 17,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      items: items
                          .map(
                            (element) => DropdownMenuItem(
                              value: element,
                              child: Text(
                                element.toString(),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) => setState(() {
                        select = value;
                      }),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Theme(
                data: ThemeData(
                  dividerTheme: Theme.of(context).dividerTheme.copyWith(
                        color: AppColors.secondaryColor.withOpacity(0.2),
                      ),
                ),
                child: const Divider(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppString.color,
                style: getBoldStyleDMSans(
                        color: AppColors.tertiaryColor,
                        fontSize: AppFontSize.s16)
                    .copyWith(
                  letterSpacing: -0.4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 15,
              ),
              child: SizedBox(
                height: 44,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: colorList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: InkWell(
                      onTap: (() {
                        setState(() {
                          isCheck[index] = !isCheck[index];
                        });
                      }),
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                          color: colorList[index],
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: isCheck[index]
                            ? SvgPicture.asset(
                                AppAssets.check,
                                color: Colors.black,
                              )
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Theme(
                    data: ThemeData(
                      elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(269, 42),
                          textStyle: getRegularStyle(
                            color: AppColors.elevtextColor,
                            fontSize: AppFontSize.s13,
                          ),
                          alignment: Alignment.centerRight,
                          elevation: AppSize.v0,
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    child: defaultElevatedButton(
                        text: AppString.applyFilter,
                        asset: AppAssets.farm,
                        size1: 50,
                        onPressed: () {}),
                  ),
                  const SizedBox(width: 40),
                  Theme(
                    data: ThemeData(
                      elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(88, 42),
                          textStyle: getRegularStyle(
                            color: AppColors.elevtextColor,
                            fontSize: AppFontSize.s13,
                          ),
                          elevation: AppSize.v0,
                          backgroundColor: AppColors.secondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    child: ElevatedButton(
                      child: const Text(AppString.reset),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
