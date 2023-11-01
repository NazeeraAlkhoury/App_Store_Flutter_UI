import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';

import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartPageScreen extends StatefulWidget {
  const StartPageScreen({super.key});

  @override
  State<StartPageScreen> createState() => _StartPageScreenState();
}

class _StartPageScreenState extends State<StartPageScreen> {
  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    // MediaQueryData mediaQueryData = MediaQuery.of(context);
    // double screenHeight1 = mediaQueryData.size.height;
    // double screenWidth1 = mediaQueryData.size.width;
    // print(screenHeight1);
    // print(screenWidth1);
    return Scaffold(
      backgroundColor: AppColors.startPageColor,
      body: Padding(
        padding: EdgeInsets.all(
          15.w,
          //  screenWidth * 0.03,
        ),
        child: DeviceInfoCustomWidget(
          builder: (context, deviceInfoModel) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: deviceInfoModel.localHeight * 0.03,
              ),
              Container(
                height: 45.h,
                //deviceInfoModel.localHeight * 0.064,
                // deviceInfoModel.orientation == Orientation.portrait
                //     ? deviceInfoModel.localHeight * 0.064
                //     : deviceInfoModel.localWidth * 0.064,
                width: 45.w,
                // deviceInfoModel.localWidth * 0.135,
                // deviceInfoModel.orientation == Orientation.portrait
                //     ? deviceInfoModel.localWidth * 0.135
                //     : deviceInfoModel.localHeight * 0.135,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.quaternaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryColor,
                      blurRadius: 25.r,
                      offset: Offset(0.w, 4.h),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'logo',
                    style: getRegularStyle(
                      color: AppColors.elevtextColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: deviceInfoModel.localHeight * 0.013,
              ),
              Text(
                AppString.appName,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 19.sp,
                      letterSpacing: -0.60.w,
                    ),
              ),
              // SizedBox(
              //   height: deviceInfoModel.localHeight * 0.02,
              // ),
              Expanded(
                child: PageView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => Column(
                    children: [
                      SizedBox(
                        height: deviceInfoModel.localHeight * 0.6,

                        // 450,
                        // 0.5769,
                        width: deviceInfoModel.localWidth,
                        child: Stack(
                          children: [
                            Image.asset('assets/images/Mask group.png',
                                height: 308.h,
                                //318.h,
                                //deviceInfoModel.localHeight * 0.4,

                                width: 209.w
                                //219.w,
                                //deviceInfoModel.localWidth * 0.59,
                                ),
                            Positioned(
                              top: 125.h,
                              //135.h,
                              // deviceInfoModel.localHeight * 0.168,

                              left: 130.w,
                              // 140.w,
                              //deviceInfoModel.localWidth * 0.357,

                              child: Image.asset(
                                height: 294.h,
                                // 307.h,
                                //deviceInfoModel.localHeight * 0.382,

                                width: 205.w,
                                // 220.w,
                                // deviceInfoModel.localWidth * 0.59,

                                'assets/images/Mask group (1).png',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: deviceInfoModel.localHeight * 0.02,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        '${AppString.onBoardBody11}\n${AppString.onBoardBody12}',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 28.sp,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    textDirection: TextDirection.rtl,
                    effect: ExpandingDotsEffect(
                      dotColor: AppColors.quaternaryColor,
                      activeDotColor: AppColors.primaryColor,
                      dotHeight: 5,
                      dotWidth: 12,
                      expansionFactor: 3,
                    ),
                  ),
                  Theme(
                    data: ThemeData(elevatedButtonTheme: elvatedStyle2()),
                    child: defaultElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.signUpRoute,
                        );
                      },
                      text: AppString.getStart,
                      asset: AppAssets.farm,
                      width:
                          //120.w,
                          150,
                      size1:
                          //20.w
                          40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: deviceInfoModel.localHeight * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ElevatedButtonThemeData elvatedStyle2() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(158, 51),

        //128.w, 41.h
        textStyle: getRegularStyle(
          color: AppColors.elevtextColor,
          fontSize: AppFontSize.s12.sp,
        ),
        alignment: Alignment.centerRight,
        elevation: AppSize.v0,
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
