import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  RegExp regex = RegExp(r'^\d{9}$');
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
              AppString.passRecovertitle1,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text(
              AppString.passRecovertitle12,
              style: Theme.of(context).textTheme.titleMedium,
              softWrap: true,
            ),
            Text(
              AppString.passRecovertitle22,
              style: Theme.of(context).textTheme.titleMedium,
              softWrap: true,
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      style: getBoldStyle(
                        color: AppColors.tertiaryColor,
                        fontSize: 22,
                      ),
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: regex.hasMatch(phoneController.text)
                                ? HexColor('#02C697')
                                : AppColors.primaryColor,
                          ),
                        ),
                        labelText: AppString.phNumber,
                        prefix: const Text('+963      '),
                        suffixIcon: regex.hasMatch(phoneController.text)
                            ? Icon(
                                Icons.check,
                                color: HexColor('#02C697'),
                                size: 24,
                              )
                            : null,
                      ),
                      //
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone number';
                        }

                        if (!regex.hasMatch(value)) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (regex.hasMatch(value)) {
                          setState(() {});
                        } else {}
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    defaultElevatedButton(
                        text: AppString.continu,
                        asset: AppAssets.next,
                        onPressed: () {
                          if (formKey.currentState!.validate() &&
                              regex.hasMatch(phoneController.text)) {
                            formKey.currentState!.save();
                            Navigator.of(context)
                                .pushNamed(Routes.verificationRoute);
                            // print('Phone number: ${phoneController.text}');
                          }
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
