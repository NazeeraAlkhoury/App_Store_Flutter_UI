import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  List<Tab> tab = [
    const Tab(
      text: AppString.all,
    ),
    const Tab(
      text: AppString.packed,
    ),
    const Tab(
      text: AppString.done,
    ),
    const Tab(
      text: AppString.cancel,
    ),
    const Tab(
      text: AppString.retur,
    ),
  ];

  List<Color> colorsList = [
    AppColors.quinaryColor,
    AppColors.tertiaryColor,
  ];
  List<String> imageList = [
    'assets/images/bagcart2.png',
    'assets/images/bagcart2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(
          title: AppString.orderHistory,
          onPres: () {
            Navigator.pop(context);
          }),
      body: DefaultTabController(
        length: tab.length,
        initialIndex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ButtonsTabBar(
                physics: const NeverScrollableScrollPhysics(),
                backgroundColor: AppColors.secondaryColor,
                unselectedBackgroundColor: Colors.white,
                labelStyle: getRegularStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                height: 40,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                unselectedLabelStyle: getRegularStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 13,
                ),
                borderWidth: 1,
                unselectedBorderColor: AppColors.secondaryColor,
                borderColor: AppColors.secondaryColor,
                radius: 20,
                tabs: tab,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const Text('0'),
                    const Text('1'),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) => HistoryDoneItem(
                            image: imageList[index], color: colorsList[index]),
                        itemCount: imageList.length,
                      ),
                    ),
                    const Text('3'),
                    const Text('4'),
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

class HistoryDoneItem extends StatelessWidget {
  final String image;
  final Color color;
  const HistoryDoneItem({super.key, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Container(
        height: 111,
        width: 389,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppColors.secondaryColor.withOpacity(
            .15,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TODAY, 12:10 AM',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      'Ranim Omar\nDamascus-Alkaza-srt.x\n, 28294\n+963 997555668',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 3,
                  right: 5,
                ),
                child: SvgPicture.asset(
                  AppAssets.bagIcon,
                  height: 13.13,
                  width: 11.25,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.bags,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Antelope',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Spacer(),
                  Text(
                    '( Item 1 )',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 111,
                width: 93,
                child: Stack(
                  children: [
                    Image.asset(
                      image,
                    ),
                    Positioned(
                      top: 85,
                      child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                          border: Border.all(
                            color: HexColor('#C9C9C9'),
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
