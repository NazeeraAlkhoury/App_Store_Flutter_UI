// ignore_for_file: avoid_print

import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_functions.dart';
import 'package:accessories_store/core/utils/app_models.dart';

import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

PreferredSizeWidget getAppBar({
  String nameAssets = AppAssets.chevronBackCircle,
  String? title,
  Function? onPres,
  List<Widget>? actions,
}) =>
    AppBar(
      leading: IconButton(
        onPressed: () {
          onPres!();
          //  print('navvvvv');
        },
        icon: SvgPicture.asset(
          nameAssets,
        ),
        iconSize: 32.0,
      ),
      title: title != null ? Text(title) : null,
      // ignore: prefer_if_null_operators
      actions: actions != null ? actions : null,
    );

Widget lableForm({required String text}) => Text(
      text,
      style: getSemiBoldStyle(
        color: AppColors.tertiaryColor,
        fontSize: AppFontSize.s11,
      ),
    );

Widget defaultTextFormField({
  required TextEditingController controller,
  required TextInputType inputType,
  IconData? preIcons,
  String? preAsset,
  String? hintText,
  String? labelText,
  bool isObscure = false,
  IconData? suffIcon,
  Function? suffpressed,
  Function? validated,
  Function? onChanged,
  Widget? suff,
}) =>
    TextFormField(
      style: getRegularStyle(
        color: AppColors.tertiaryColor,
        fontSize: 17,
      ),
      onChanged: (value) {
        onChanged!(value);
      },
      obscureText: isObscure,
      controller: controller,
      textInputAction: TextInputAction.next,
      keyboardType: inputType,
      decoration: InputDecoration(
        suffix: suff,
        suffixIcon: suffIcon != null
            ? IconButton(
                icon: Icon(suffIcon),
                onPressed: (() {
                  suffpressed!();
                }),
              )
            : null,

        prefixIcon: preAsset != null
            ? Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset(
                  preAsset,
                ),
              )
            : null,

        // prefixIcon: preAsset == null
        //     ? Icon(
        //         preIcons,
        //       )
        //     : Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: SvgPicture.asset(
        //           preAsset,
        //         ),
        //       ),
        hintText: hintText,
        labelText: labelText,
      ),
      validator: (String? value) {
        return validated!(value!);
      },
    );

Widget facebookElevatedButton() => Theme(
      data: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.faceElevateColor,
            minimumSize: const Size(200, 44),
            textStyle: getRegularStyle(
              color: AppColors.elevtextColor,
              fontSize: AppFontSize.s13,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            elevation: AppSize.v0,
          ),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            SvgPicture.asset(AppAssets.facebooklogo),
            const SizedBox(
              width: 50,
            ),
            const Text(
              AppString.connectFacebook,
            ),
          ],
        ),
      ),
    );

Widget defaultElevatedButton({
  required String text,
  String? asset,
  double? size,
  double size1 = 30,
  double width = 185,
  Function? onPressed,
}) =>
    ElevatedButton(
      onPressed: () {
        onPressed!();
      },
      child: SizedBox(
        width: width,
        height: 27,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (size == null)
              SizedBox(
                width: size1,
              ),
            Expanded(
              child: Text(
                text,
              ),
            ),
            if (size != null)
              SizedBox(
                width: size,
              ),
            if (asset != null)
              SvgPicture.asset(
                asset,
              ),
          ],
        ),
      ),
    );

//
// Widget defaultFormField({
//   required TextEditingController controller,
//   required String labelText,
//   required IconData prefixIcon,
//   IconData? suffixIcon,
//   Function? onsuffix,
//   Function? onChanged,
//   Function? onTap,
//   Function? onSubmitted,
//   required TextInputType textInputType,
//   required Function validate,
//   bool? isObscureText = false,
// }) =>
//     TextFormField(
//       textInputAction: TextInputAction.next,
//       controller: controller,
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(AppSize.s10),
//         ),
//         labelText: labelText,
//         prefixIcon: Icon(prefixIcon),
//         suffixIcon: suffixIcon != null
//             ? IconButton(
//                 onPressed: () {
//                   onsuffix!();
//                 },
//                 icon: Icon(suffixIcon))
//             : null,
//       ),
//       onChanged: (value) {
//         onChanged!(value);
//       },
//       onTap: () {
//         onTap!();
//       },
//       onFieldSubmitted: ((value) {
//         onSubmitted!(value);
//       }),
//       keyboardType: textInputType,
//       validator: (String? value) {
//         return validate(value!);
//       },
//       obscureText: isObscureText!,
//     );

Widget productItem({
  required String image,
  required String category,
  required String productColor,
  required String price,
}) =>
    Card(
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

class DeviceInfoCustomWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInfoModel deviceInfoModel)
      builder;
  const DeviceInfoCustomWidget({super.key, required this.builder});
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        DeviceInfoModel deviceInfoModel = DeviceInfoModel(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHieght: mediaQueryData.size.height,
          localWidth: constraints.maxWidth,
          localHeight: constraints.maxHeight,
        );
        print(deviceInfoModel.deviceType);
        print('orientation is ${deviceInfoModel.orientation}');
        print('screen height is ${deviceInfoModel.screenHieght}');
        print('screen width is ${deviceInfoModel.screenWidth}');
        print('local height is ${deviceInfoModel.localHeight}');
        print('local width is ${deviceInfoModel.localWidth}');
        return builder(context, deviceInfoModel);
      },
    );
  }
}

class GetBottomBar extends StatefulWidget {
  final int currentndex;
  final Function(int) onTab;
  const GetBottomBar({
    super.key,
    required this.currentndex,
    required this.onTab,
  });

  @override
  State<GetBottomBar> createState() => _GetBottomBarState();
}

class _GetBottomBarState extends State<GetBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          // itemCount: screensList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child:
                // IconButton(
                //   icon:
                InkWell(
              child: Icon(
                color: index == widget.currentndex
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
                widget.onTab(index);
                // setState(() {
                //   currentIndex = index;
                // });
              },
            ),
          ),
        ),
      ),
    );
  }
}
