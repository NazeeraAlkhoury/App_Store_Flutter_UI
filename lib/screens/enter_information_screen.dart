import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EnterTheInformScreen extends StatefulWidget {
  const EnterTheInformScreen({super.key});

  @override
  State<EnterTheInformScreen> createState() => _EnterTheInformScreenState();
}

class _EnterTheInformScreenState extends State<EnterTheInformScreen> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var addressNameController = TextEditingController();
  var cityNameController = TextEditingController();
  var phoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  RegExp regex = RegExp(r'^\d{9}$');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${AppString.enterdelivery}\n${AppString.address}',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  defaultTextFormField(
                    controller: firstNameController,
                    inputType: TextInputType.name,
                    labelText: AppString.firstName,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  defaultTextFormField(
                    controller: lastNameController,
                    inputType: TextInputType.name,
                    labelText: AppString.lastName,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  defaultTextFormField(
                    controller: addressNameController,
                    inputType: TextInputType.streetAddress,
                    labelText: AppString.address2,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  defaultTextFormField(
                    controller: cityNameController,
                    inputType: TextInputType.text,
                    labelText: AppString.city,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
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
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
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
                                  : null),
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
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      const SwitchButton(),
                      Center(
                        child: defaultElevatedButton(
                            text: AppString.save,
                            asset: AppAssets.next,
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  Routes.layoutRoute, (route) => false);
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _showTextField = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: _showTextField
          ? Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      _showTextField = !_showTextField;
                      setState(() {});
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(120, 49),
                      textStyle: Theme.of(context).textTheme.titleMedium,
                      side: const BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    child: const Text(
                      AppString.note1,
                    ),
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: SizedBox(
                height: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 148,
                      width: 391,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Theme(
                          data: ThemeData(
                            inputDecorationTheme: InputDecorationTheme(
                              hintStyle: getRegularStyle(
                                color: AppColors.primaryColor,
                                fontSize: 13,
                              ).copyWith(
                                letterSpacing: -0.08,
                              ),
                              labelStyle: getRegularStyle(
                                color: AppColors.tertiaryColor,
                                fontSize: 17,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              // contentPadding: EdgeInsets.all(0),
                            ),
                          ),
                          child: TextFormField(
                            maxLines: 7,
                            decoration: const InputDecoration(
                              hintText: AppString.note2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Theme(
                      data: ThemeData(
                        elevatedButtonTheme: elvatedStyle4(),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          AppString.note3,
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

ElevatedButtonThemeData elvatedStyle4() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(59, 20),
        textStyle: getMediumPoppins(
          color: AppColors.elevtextColor,
          fontSize: AppFontSize.s9,
        ),
        alignment: Alignment.centerRight,
        elevation: AppSize.v0,
        backgroundColor: AppColors.tertiaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
