import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOut3 extends StatefulWidget {
  const CheckOut3({super.key});

  @override
  State<CheckOut3> createState() => _CheckOut3State();
}

class _CheckOut3State extends State<CheckOut3> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        AppString.orderCheck,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Row(
        children: [
          Text(
            AppString.addressShip,
            style: Theme.of(context).textTheme.headlineMedium,
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
      Text(
        'Ranim Omar\n Damascus-Alkaza-srt.x \n, 28294 \n +963 997555668',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      Text(
        AppString.expressdelivery,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      Text(
        '1 -2 Hours',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      Theme(
        data: ThemeData(
          dividerTheme: DividerThemeData(
            color: AppColors.dividerColor2,
          ),
        ),
        child: const Divider(),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppString.edit,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: AppFontSize.s9,
                ),
          ),
          SvgPicture.asset(
            AppAssets.edit,
          ),
          SizedBox(
            height: 94,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Image.asset(
                    'assets/images/bagcart2.png',
                  ),
                );
              },
              itemCount: 2,
            ),
          ),
        ],
      ),
      Theme(
        data: ThemeData(
          dividerTheme: DividerThemeData(
            color: AppColors.dividerColor2,
          ),
        ),
        child: const Divider(),
      ),
      Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
        ),
        child: Row(
          children: [
            Text(
              '${AppString.subTotal} (2 product)',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              width: 60,
            ),
            Text(
              '\$ 537.08',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ),
      Row(
        children: [
          Text(
            AppString.deliveryFee,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            width: 120,
          ),
          Text(
            '\$ 10.00',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Row(
          children: [
            Text(
              AppString.total,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              width: 180,
            ),
            Text(
              '\$ 547.08',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
    ]);
  }
}
