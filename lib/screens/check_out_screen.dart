import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';

import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:accessories_store/screens/checkout1_screen.dart';
import 'package:accessories_store/screens/checkout2.dart';
import 'package:accessories_store/screens/checkout3.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final List<Step> getSteps = [
      Step(
        isActive: currentStep >= 0,
        label: Text(
          AppString.delivery,
          style: getRegulerPoppins(
            color: currentStep >= 0
                ? AppColors.primaryColor
                : AppColors.stepTextColor,
            fontSize: 9,
          ),
        ),
        title: const SizedBox.shrink(),
        content: const Checkout1(),
      ),
      Step(
        isActive: currentStep >= 1,
        label: Text(
          AppString.payment,
          style: getRegulerPoppins(
            color: currentStep >= 1
                ? AppColors.primaryColor
                : AppColors.stepTextColor,
            fontSize: 9,
          ),
        ),
        title: const SizedBox.shrink(),
        content: const CheckOut2(),
      ),
      Step(
        isActive: currentStep >= 2,
        label: Text(
          AppString.orderCheck,
          style: getRegulerPoppins(
            color: currentStep >= 2
                ? AppColors.primaryColor
                : AppColors.stepTextColor,
            fontSize: 9,
          ),
        ),
        title: const SizedBox.shrink(),
        content: const CheckOut3(),
      ),
    ];
    return Scaffold(
      appBar: getAppBar(
        onPres: () {
          Navigator.pop(context);
        },
      ),
      body: Stepper(
        elevation: AppSize.v0,
        steps: getSteps,
        currentStep: currentStep,
        type: StepperType.horizontal,
        onStepTapped: ((index) {
          setState(() {
            currentStep = index;
          });
        }),
        onStepContinue: () {
          setState(() {
            if (currentStep < getSteps.length - 1) {
              currentStep++;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (currentStep > 0) {
              currentStep -= 1;
            }
          });
        },
        controlsBuilder: (context, details) {
          if (currentStep < getSteps.length - 1) {
            return Theme(
              data: ThemeData(
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(305, 44),
                    textStyle: getRegularStyle(
                      color: AppColors.elevtextColor,
                      fontSize: 20,
                    ),
                    alignment: Alignment.centerRight,
                    elevation: AppSize.v0,
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              child: ElevatedButton(
                child: const Center(child: Text(AppString.continuePayment)),
                onPressed: () {
                  setState(() {
                    if (currentStep < getSteps.length - 1) {
                      currentStep++;
                    }
                  });
                },
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Theme(
                    data: ThemeData(
                      elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(130, 47),
                          textStyle: getRegularStyle(
                            color: AppColors.elevtextColor,
                            fontSize: 20,
                          ),
                          alignment: Alignment.centerRight,
                          elevation: AppSize.v0,
                          backgroundColor: AppColors.secondaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    child: ElevatedButton(
                      child: const Center(
                          child: Text(
                        AppString.cancelOrder,
                      )),
                      onPressed: () {
                        setState(() {
                          if (currentStep == getSteps.length - 1) {
                            currentStep--;
                          }
                        });
                      },
                    ),
                  ),
                  Theme(
                    data: ThemeData(
                      elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(130, 47),
                          textStyle: getRegularStyle(
                            color: AppColors.elevtextColor,
                            fontSize: 20,
                          ),
                          alignment: Alignment.centerRight,
                          elevation: AppSize.v0,
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    child: ElevatedButton(
                      child: const Center(
                          child: Text(
                        AppString.continueOrder,
                      )),
                      onPressed: () {
                        setState(() {
                          if (currentStep < getSteps.length - 1) {
                            currentStep++;
                          } else {
                            // const Navigator(
                            //   initialRoute: Routes.successfulyPayRoute,
                            // );
                            Navigator.pushNamedAndRemoveUntil(context,
                                Routes.successfulyPayRoute, (route) => false);
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
