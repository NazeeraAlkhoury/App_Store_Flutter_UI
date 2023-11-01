import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.otp,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text(
              '${AppString.authCode1}\n${AppString.authCode2}',
              style: Theme.of(context).textTheme.titleMedium,
              softWrap: true,
            ),
            const SizedBox(
              height: 70,
            ),
            Column(
              children: [
                //otp
                OtpTextField(
                  numberOfFields: 4,
                  borderColor: AppColors.tertiaryColor,
                  fieldWidth: 65,
                  focusedBorderColor: AppColors.primaryColor,
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 22),
                  // styles: [
                  //   Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22),
                  // ],
                  showFieldAsBox: false,
                  borderWidth: 4.0,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here if necessary
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {},
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Text(
                    AppString.reciveSMS,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Text(
                  AppString.request,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 40,
                ),

                defaultElevatedButton(
                    text: AppString.verifyPhone,
                    asset: AppAssets.next,
                    size: 50,
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          Routes.doneRoute, (route) => false);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
