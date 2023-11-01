import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ReturnScreen extends StatefulWidget {
  const ReturnScreen({super.key});

  @override
  State<ReturnScreen> createState() => _ReturnScreenState();
}

class _ReturnScreenState extends State<ReturnScreen> {
  List<Widget> returnItems = [
    Row(
      children: [
        Text(
          AppString.damaged,
          style: getRegularStyle(
            color: AppColors.tertiaryColor,
          ).copyWith(
            fontSize: 6,
          ),
        ),
      ],
    ),
    Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Text(
        AppString.noLonger,
        style: getRegularStyle(
          color: AppColors.tertiaryColor,
        ).copyWith(
          fontSize: 6,
        ),
      ),
    ),
    Text(
      AppString.itemArrivedToLate,
      style: getRegularStyle(
        color: AppColors.tertiaryColor,
      ).copyWith(
        fontSize: 6,
      ),
    ),
  ];
  String? isSelect;
  int selectIndex = -1;
  @override
  Widget build(BuildContext context) {
    var commentController = TextEditingController();
    return Scaffold(
      appBar: getAppBar(
        title: AppString.retur,
        onPres: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 350,
          width: 389,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppColors.secondaryColor.withOpacity(.15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 111,
                      width: 93,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/bagcart2.png',
                          ),
                          Positioned(
                            top: 85,
                            child: Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                border: Border.all(
                                  color: HexColor('#C9C9C9'),
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundColor: AppColors.quinaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.bags,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Antelope',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${AppString.shipped} Aug 19,2023',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${AppString.quantity} 1',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Theme(
                      data: ThemeData(
                        elevatedButtonTheme: ElevatedButtonThemeData(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(124, 32),
                            textStyle: getSemiBoldPoppins(
                              color: AppColors.elevtextColor,
                              fontSize: 13,
                            ),
                            elevation: AppSize.v0,
                            backgroundColor: AppColors.secondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.noReturnRoute);
                        },
                        icon: SvgPicture.asset(
                          AppAssets.timer,
                        ),
                        label: const Text(
                          AppString.returnBack,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  AppString.whyReturning,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 11,
                      ),
                ),
                Container(
                  height: 45,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      1,
                    ),
                    border: Border.all(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: returnItems,
                    ),
                  ),
                  //  DropdownButtonFormField(
                  //   isExpanded: true,
                  //   items: returnItems
                  //       .map(
                  //         (e) => DropdownMenuItem(
                  //             value: e,
                  //             child: Text(
                  //               e.toString(),
                  //             )),
                  //       )
                  //       .toList(),
                  //   onChanged: (value) {
                  //     setState(() {
                  //       isSelect = value;
                  //     });
                  //   },
                  // ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 97,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      1,
                    ),
                    border: Border.all(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  child: Theme(
                    data: ThemeData(
                      primarySwatch: AppColors.primaryColor,
                      inputDecorationTheme: InputDecorationTheme(
                        border: InputBorder.none,
                        // border: const OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     width: 1,
                        //     color: AppColors.primaryColor,
                        //   ),
                        // ),
                        //  filled: true,
                        //alignLabelWithHint: true,
                        hintStyle: getRegularStyle(
                          color: AppColors.tertiaryColor,
                          fontSize: 6,
                        ).copyWith(
                          letterSpacing: 0.07,
                        ),
                      ),
                    ),
                    child: TextFormField(
                      style: getRegularStyle(
                        color: AppColors.tertiaryColor,
                        fontSize: 6,
                      ).copyWith(
                        letterSpacing: 0.07,
                      ),
                      controller: commentController,
                      decoration: const InputDecoration(
                        hintText: AppString.yourCommentsHere,
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.note.toUpperCase(),
                        style: getMediumPoppins(
                          color: AppColors.primaryColor,
                          fontSize: 6,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        AppString.returnNote,
                        style: getRegularStyle(
                          color: AppColors.tertiaryColor,
                          fontSize: 6,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
