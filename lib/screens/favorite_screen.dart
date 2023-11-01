import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';

import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/images/B1.png',
      'assets/images/B2.png',
      'assets/images/B3.png',
    ];
    List<String> cat = [
      'Bags',
      'Bags',
      'Bags',
    ];
    List<String> colorproduct = [
      'Loria',
      'Antelope',
      'gray',
    ];
    List<String> price = [
      '100.90',
      '200.00',
      '150.00',
    ];
    return Scaffold(
        appBar: getAppBar(title: AppString.myFavorite, actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.favorite_border,
              color: AppColors.tertiaryColor,
            ),
          ),
        ]),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            bottom: 15,
            left: 15,
            right: 15,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: colorproduct.length,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.2,
            ),
            itemBuilder: (context, index) => productItem(
              image: image[index],
              category: cat[index],
              productColor: colorproduct[index],
              price: price[index],
            ),
          ),
        ));
  }
}
