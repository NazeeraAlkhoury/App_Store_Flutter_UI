import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Checkout1 extends StatefulWidget {
  const Checkout1({super.key});

  @override
  State<Checkout1> createState() => _Checkout1State();
}

class _Checkout1State extends State<Checkout1> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var countryController = TextEditingController();
  var cityController = TextEditingController();
  var cityMapController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.checkAddress,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: TextFormField(
              controller: firstNameController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                hintText: 'Ranim',
                hintStyle: getRegularStyle(
                  color: AppColors.tertiaryColor,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          TextFormField(
            controller: lastNameController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Omar',
              hintStyle: getRegularStyle(
                color: AppColors.tertiaryColor,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: countryController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Syria',
              hintStyle: getRegularStyle(
                color: AppColors.tertiaryColor,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: cityController,
            textInputAction: TextInputAction.next,
            style: getRegularStyle(
              color: AppColors.tertiaryColor,
              fontSize: 17,
            ),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Damascus',
              hintStyle: getRegularStyle(
                color: AppColors.tertiaryColor,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            style: getRegularStyle(
              color: AppColors.tertiaryColor,
              fontSize: 17,
            ),
            textInputAction: TextInputAction.next,
            controller: cityMapController,
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
              hintText: 'Select City on Map',
              hintStyle: getRegularStyle(
                color: AppColors.tertiaryColor,
                fontSize: 17,
              ),
              suffix: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.mapRoute);
                },
                child: SvgPicture.asset(
                  AppAssets.forward,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            style: getBoldStyle(
              color: AppColors.tertiaryColor,
              fontSize: 22,
            ),
            controller: phoneController,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: '+963      997555668',
              hintStyle: getRegularStyle(
                color: AppColors.tertiaryColor,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(110, 35),
                  textStyle: Theme.of(context).textTheme.titleMedium,
                  side: const BorderSide(
                    color: AppColors.primaryColor,
                  ),
                ),
                child: const Text(
                  AppString.note1,
                ),
              ),
              const Spacer(),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(110, 35),
                  textStyle: Theme.of(context).textTheme.titleMedium,
                  side: const BorderSide(
                    color: AppColors.primaryColor,
                  ),
                ),
                child: const Text(
                  AppString.update,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
