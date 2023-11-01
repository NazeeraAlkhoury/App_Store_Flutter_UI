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

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  var messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
        title: AppString.chat,
        onPres: () {
          Navigator.pushNamed(
            context,
            Routes.profileRoute,
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Yesterday 9:41',
                style: getMediumStyle(
                  color: AppColors.tertiaryColor.withOpacity(0.6),
                  fontSize: 11,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/contact_photo.png',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 5),
                      child: Text(
                        AppString.admin,
                        style: getRegularStyle(
                          color: AppColors.tertiaryColor.withOpacity(0.6),
                          fontSize: 11,
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: ChatBubbleAdminClipper(),
                      child: Container(
                        height: 124,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: AppColors.chatAdminColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          child: Text(
                            'Hello, Thank you for contacting store\nBefore starting, will store this and personal data according to the privacy policy',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Stack(
            //   alignment: Alignment.bottomRight,
            //   children: [
            //     Container(
            //       padding: const EdgeInsets.symmetric(
            //         horizontal: 12,
            //         vertical: 6,
            //       ),
            //       //height: 124,
            //       width: 290,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(18),
            //         color: AppColors.chatUserColor,
            //       ),
            //       child: Text(
            //         'please i need to help me',
            //         style: Theme.of(context).textTheme.labelMedium!.copyWith(
            //               color: AppColors.whiteColor,
            //             ),
            //       ),
            //     ),

            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                //  right: 15,
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: ClipPath(
                  clipper: ChatBubbleUserClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.chatUserColor,
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                    height: 34,
                    width: 267,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                      child: Text(
                        'please i need to help me',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: AppColors.whiteColor),
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
                  Navigator.pushNamed(context, Routes.returnRoute);
                },
                icon: SvgPicture.asset(
                  AppAssets.timer,
                ),
                label: const Text(
                  AppString.returnBack,
                ),
              ),
            ),

            Theme(
                data: ThemeData(
                  dividerTheme: Theme.of(context).dividerTheme.copyWith(
                        color: HexColor('#3C3C43').withOpacity(.36),
                        //HexColor('#777777'),
                      ),
                ),
                child: const Divider()),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppAssets.attachment,
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 300,
                  height: 36,
                  child: Theme(
                    data: ThemeData(
                      primarySwatch: AppColors.primaryColor,
                      inputDecorationTheme: InputDecorationTheme(
                        contentPadding: const EdgeInsets.only(
                          bottom: 4,
                          left: 12,
                          right: 4,
                          top: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    child: TextFormField(
                      controller: messageController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: AppString.message,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: SvgPicture.asset(
                            AppAssets.record,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  AppAssets.send,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubbleAdminClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double x = size.width;
    double y = size.height;

    final path = Path();

    path.moveTo(38, 0);
    path.lineTo(x - 18, 0);
    path.quadraticBezierTo(x, 0, x, 18);
    path.lineTo(x, y - 18);
    path.quadraticBezierTo(x, y, x - 18, y);
    path.lineTo(38, y);

    path.quadraticBezierTo(20, y, 20, y - 7);
    path.quadraticBezierTo(0, y, 0, y);
    path.quadraticBezierTo(10, y - 5, 15, y - 20);
    path.lineTo(15, 18);
    path.quadraticBezierTo(15, 0, 38, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ChatBubbleUserClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double x = size.width;
    double y = size.height;

    final path = Path();

    path.moveTo(x - 38, 0);
    path.quadraticBezierTo(x - 20, 0, x - 20, 18);
    path.lineTo(x - 20, y - 18);
    path.quadraticBezierTo(x - 20, y - 4, x, y);
    path.quadraticBezierTo(x - 20, y, x - 30, y - 4);
    path.quadraticBezierTo(x - 20, y - 2, x - 38, y);
    path.lineTo(18, y);
    path.quadraticBezierTo(0, y, 0, y - 18);
    path.quadraticBezierTo(0, 0, 18, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
