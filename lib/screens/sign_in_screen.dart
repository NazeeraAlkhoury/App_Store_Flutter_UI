// ignore_for_file: avoid_print

import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';

import 'package:accessories_store/core/utils/app_assets.dart';

import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPassword = true;
  var signInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.signInTitle1,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              Text(
                AppString.signInTitle2,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: signInFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      lableForm(
                        text: AppString.useremail,
                      ),
                      defaultTextFormField(
                        controller: userNameController,
                        inputType: TextInputType.name,
                        preAsset: AppAssets.userName,
                        hintText: AppString.usernameExample,
                        onChanged: (value) {
                          print(value);
                        },
                        validated: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your user name';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      lableForm(
                        text: AppString.passWord,
                      ),
                      defaultTextFormField(
                        controller: passwordController,
                        inputType: TextInputType.visiblePassword,
                        hintText: AppString.passWordExample,
                        isObscure: isPassword,
                        onChanged: (value) {
                          print(value);
                        },
                        validated: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter Password';
                          } else {
                            return null;
                          }
                        },
                        // preIcons: Icons.lock,
                        preAsset: AppAssets.lock,
                        suffIcon: isPassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        suffpressed: () {
                          isPassword = !isPassword;
                          setState(() {});
                        },
                      ),
                      const SizedBox(height: 20),

                      SizedBox(
                        height: 27,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppAssets.checkBox,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              AppString.remmber,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: (() {
                                Navigator.of(context)
                                    .pushNamed(Routes.forgetPasswordRoute);
                              }),
                              child: Text(
                                AppString.forgotPass,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 100),
                      defaultElevatedButton(
                        text: AppString.signIn,
                        asset: AppAssets.combined,
                        onPressed: () {
                          if (signInFormKey.currentState!.validate()) {
                            Navigator.pushNamedAndRemoveUntil(
                                context, Routes.layoutRoute, (route) => false);
                          }
                        },
                      ),
                      //const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppString.dontHaveAcc,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: (() {
                                Navigator.of(context)
                                    .pushNamed(Routes.signUpRoute);
                              }),
                              child: Text(
                                AppString.signUp,
                                style: getBoldStyle(
                                    color: AppColors.tertiaryColor,
                                    fontSize: AppFontSize.s13),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: facebookElevatedButton(),
                      ),
                      Center(
                        child: Container(
                          height: 5,
                          width: 150,
                          color: AppColors.dividerColor1,
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
    );
  }
}
