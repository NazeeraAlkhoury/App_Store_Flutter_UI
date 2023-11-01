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
import 'package:hexcolor/hexcolor.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPassword = true;
  var signUpFormKey = GlobalKey<FormState>();
  RegExp regex = RegExp(r'^.{8,}$');
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
                AppString.gettingStarted,
                style: Theme.of(context).textTheme.titleLarge,
                //  getBoldStyle(
                //   fontSize: AppFontSize.s28,
                //   color: AppColors.tertiaryColor,
                // ),
              ),
              const SizedBox(height: 10),
              Text(
                AppString.createAccount,
                style: Theme.of(context).textTheme.titleMedium,
                // getRegularStyle(
                //   color: AppColors.primaryColor,
                //   fontSize: AppFontSize.s15,
                // ).copyWith(letterSpacing: -0.24),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: signUpFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      lableForm(
                        text: AppString.email,
                      ),
                      defaultTextFormField(
                        controller: emailController,
                        inputType: TextInputType.emailAddress,
                        //  preIcons: Icons.mail_outline,
                        preAsset: AppAssets.mail,
                        hintText: AppString.emailExample,
                        validated: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          print(value);
                        },
                      ),
                      const SizedBox(height: 20),
                      lableForm(
                        text: AppString.userName,
                      ),
                      Theme(
                        data: ThemeData(
                          primarySwatch: AppColors.primaryColor,
                          inputDecorationTheme: InputDecorationTheme(
                            hintStyle: getRegularStyle(
                              color: AppColors.tertiaryColor.withOpacity(.3),
                              fontSize: 17,
                            ),

                            labelStyle: getRegularStyle(
                              color: AppColors.tertiaryColor,
                              fontSize: 17,
                            ),
                            prefixStyle: getRegularStyle(
                                    color: AppColors.tertiaryColor,
                                    fontSize: AppFontSize.s17)
                                .copyWith(
                              letterSpacing: -0.41,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: regex.hasMatch(userNameController.text)
                                    ? HexColor('#02C697')
                                    : AppColors.primaryColor,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: regex.hasMatch(userNameController.text)
                                    ? HexColor('#02C697')
                                    : AppColors.tertiaryColor.withOpacity(.3),
                              ),
                            ),
                            //  prefixIconColor: AppColors.tertiaryColor,
                          ),
                        ),
                        child: defaultTextFormField(
                            controller: userNameController,
                            inputType: TextInputType.name,
                            preAsset: AppAssets.userName,
                            hintText: AppString.usernameExample,
                            onChanged: (value) {
                              if (regex.hasMatch(value)) {
                                setState(() {});
                              } else {}
                              setState(() {});
                            },
                            validated: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please enter your userName';
                              }

                              if (!regex.hasMatch(value)) {
                                return 'Please enter a valid user name';
                              }
                              return null;
                            },
                            suff: regex.hasMatch(userNameController.text)
                                ? Icon(
                                    Icons.check,
                                    color: HexColor('#02C697'),
                                    size: 24,
                                  )
                                : null),
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
                        // preIcons: Icons.lock,
                        preAsset: AppAssets.lock,
                        suffIcon: isPassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        suffpressed: () {
                          isPassword = !isPassword;
                          setState(() {});
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        validated: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Passsword';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                          height: 27,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                AppAssets.checkBox,
                                // height: 20,
                                // width: 20,
                              ),
                              // Checkbox(
                              //   value: true,
                              //   onChanged: ((value) {}),
                              // ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppString.checkCondTerm,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    AppString.condTerm,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                    // getBoldStyle(
                                    //     color: AppColors.tertiaryColor,
                                    //     fontSize: AppFontSize.s11),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      const SizedBox(height: 20),
                      defaultElevatedButton(
                        text: AppString.signUp,
                        asset: AppAssets.combined,
                        onPressed: () {
                          if (signUpFormKey.currentState!.validate()) {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              Routes.enterInformationRoute,
                              (route) => false,
                            );
                          }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppString.haveAccount,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: (() {
                                Navigator.of(context)
                                    .pushNamed(Routes.signInRoute);
                              }),
                              child: Text(
                                AppString.signIn,
                                style: getBoldStyle(
                                    color: AppColors.tertiaryColor,
                                    fontSize: AppFontSize.s13),
                              ),
                              // TextButton(
                              //   style: ButtonStyle(
                              //     textStyle:
                              //         MaterialStateProperty.resolveWith<TextStyle>(
                              //       (states) => getBoldStyle(
                              //           color: AppColors.tertiaryColor,
                              //           fontSize: AppFontSize.s13),
                              //     ),
                              //   ),
                              //   onPressed: () {
                              //     //navigator to sign in
                              //   },
                              //   child: const Text(
                              //     AppString.signIn,
                              //   ),
                              // ),
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
