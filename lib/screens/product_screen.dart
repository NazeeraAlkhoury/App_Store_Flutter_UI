import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:badges/badges.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    List productColor = [
      HexColor('#F3BFAA'),
      HexColor('#8E98F7'),
      HexColor('#161616'),
      HexColor('#DFDFDF'),
    ];
    return Scaffold(
      appBar: getAppBar(
        title: AppString.productPage,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Badge(
              position: BadgePosition.topEnd(),
              badgeContent: Text(
                '2',
                style: getMediumPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 11,
                ),
              ),
              badgeStyle: BadgeStyle(
                badgeColor: AppColors.quinaryColor,
                //borderRadius: BorderRadius.circular(30),
              ),
              child: SvgPicture.asset(
                AppAssets.bagIcon,
                height: 25,
                width: 25,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  left: 110,
          SizedBox(
            height: 400,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 70,
                    right: 15,
                  ),
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 5,
                    axisDirection: Axis.vertical,
                    effect: WormEffect(
                      activeDotColor: AppColors.secondaryColor,
                      dotColor: AppColors.tertiaryColor,
                      dotHeight: 7,
                      dotWidth: 7,
                    ),
                  ),
                ),
                SizedBox(
                  height: 440,
                  width: 300,
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: pageController,
                    itemCount: 5,
                    itemBuilder: (context, index) => SizedBox(
                      // height: 460,
                      height: 390,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                            ),
                            child: Image.asset('assets/images/bagproduct.png'),
                          ),
                          SvgPicture.asset(
                            AppAssets.share,
                          ),
                          Positioned(
                            top: 365,
                            left: 60,
                            child: Container(
                              height: 31,
                              width: 108,
                              decoration: BoxDecoration(
                                color: AppColors.tertiaryColor.withOpacity(.9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove,
                                      color: AppColors.whiteColor,
                                      size: 18,
                                    ),
                                  ),
                                  Text(
                                    '1',
                                    style: getRegularStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add,
                                      color: AppColors.whiteColor,
                                      size: 18,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.bags,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 17,
                          ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Antelope',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 12,
                          ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '\$ 256.90',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: 18,
                        color: AppColors.secondaryColor,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              AppString.color.toUpperCase(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 17,
                  ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 15),
            child: Row(
              children: [
                SizedBox(
                  height: 36,
                  width: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productColor.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(
                        right: 5,
                      ),
                      child: Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                            color: HexColor('#C9C9C9'),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.4),
                          child: CircleAvatar(
                            backgroundColor: productColor[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Theme(
                  data: ThemeData(
                      elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(132, 36),
                      textStyle: getRegularStyle(
                        color: AppColors.elevtextColor,
                        fontSize: AppFontSize.s13,
                      ),
                      alignment: Alignment.center,
                      elevation: AppSize.v0,
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  )),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      AppString.addCart,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              AppString.description,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 17,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20, right: 15),
            child: ExpandableText(
              '- Celana Jeans dengan Pola Mom Fit\n- Bahan Katun Denim Tidak Melar\n- Pinggang Elastis memakai karet\n- Nyaman dipakai\ngggggg',
              maxLines: 4,
              linkColor: AppColors.secondaryColor,
              //  overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 12,
                  ),
              expandText: AppString.readMore,
              collapseText: AppString.readLess,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Theme(
              data: ThemeData(
                dividerTheme: Theme.of(context).dividerTheme.copyWith(
                      color: HexColor('#777777'),
                    ),
              ),
              child: const Divider(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppAssets.shieldCheck,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppString.originalProduct,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Spacer(),
                SvgPicture.asset(
                  AppAssets.timer,
                  color: AppColors.secondaryColor,
                  height: 13,
                  width: 13,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppString.returnGoods,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppAssets.price,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppString.codeAvailable,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Spacer(),
                SvgPicture.asset(
                  AppAssets.wallet,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppString.payDirectly,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
