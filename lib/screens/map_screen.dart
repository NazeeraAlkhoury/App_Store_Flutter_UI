import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
        onPres: () {
          Navigator.pushReplacementNamed(context, Routes.checkOutRoute);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 392,
              child: Theme(
                data: ThemeData(
                  inputDecorationTheme: InputDecorationTheme(
                      fillColor: AppColors.tertiaryColor.withOpacity(
                        .12,
                      ),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          12,
                        ),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle:
                          Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: AppColors.tertiaryColor.withOpacity(.3),
                              )),
                ),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: AppString.enterCity,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SvgPicture.asset(
                        'assets/icons/microphone.svg',
                      ),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: SvgPicture.asset(
                        'assets/icons/magnifyingglass.svg',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 525,
              width: 410,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(AppAssets.map),
                  Image.asset(AppAssets.map2),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(110, 35),
                  textStyle: Theme.of(context).textTheme.titleMedium,
                  side: const BorderSide(
                    color: AppColors.primaryColor,
                  ),
                ),
                child: const Text(
                  AppString.save,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
