import 'package:accessories_store/core/global/theme/app_colors.dart';
import 'package:accessories_store/core/global/theme/app_fonts.dart';
import 'package:accessories_store/core/global/theme/app_text_style.dart';
import 'package:accessories_store/core/utils/app_assets.dart';
import 'package:accessories_store/core/utils/app_size.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOut2 extends StatefulWidget {
  const CheckOut2({super.key});

  @override
  State<CheckOut2> createState() => _CheckOut2State();
}

class _CheckOut2State extends State<CheckOut2> {
  // ignore: prefer_final_fields
  List<bool> _isOpenList = [false, false, false];

  void _onExpansion(int index) {
    setState(() {
      for (int i = 0; i < _isOpenList.length; i++) {
        if (i == index) {
          _isOpenList[i] = !_isOpenList[i];
        } else {
          _isOpenList[i] = false;
        }
      }
    });
  }

  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    List<ExpansionPanel> panels = [
      ExpansionPanel(
        headerBuilder: (BuildContext context, bool isOpen) {
          return ListTile(
            title: Text(
              AppString.credit,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          );
        },
        body: const CreditBody(),
        isExpanded: _isOpenList[0],
      ),
      ExpansionPanel(
        headerBuilder: (BuildContext context, bool isOpen) {
          return ListTile(
            title: Text(
              AppString.bank,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          );
        },
        body: const BanckBody(),
        isExpanded: _isOpenList[1],
      ),
      ExpansionPanel(
        //        headerBuilder: (BuildContext context, bool isOpen) {
        //   return ListTile(
        //     leading: null,
        //     title: Text(
        //       AppString.alharam,
        //       style: Theme.of(context).textTheme.labelMedium,
        //     ),
        //     icon: Icon(Icons.arrow_drop_down),
        //   );
        // },
        headerBuilder: (BuildContext context, bool isOpen) {
          return ListTile(
            title: Text(
              AppString.alharam,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          );
        },
        body: const AlharamBody(),
        isExpanded: _isOpenList[2],
      ),
      // ExpansionPanel(
      //   headerBuilder: (context, isExpanded) => SizedBox.shrink(),
      //   body: SizedBox.shrink(),
      //   isExpanded: false,
      // ),
    ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                AppString.chosePayment,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Spacer(),
              Text(
                AppString.id100,
                style: getRegularStyle(
                  color: AppColors.tertiaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: ExpansionPanelList(
              expandedHeaderPadding: const EdgeInsets.all(0),
              expansionCallback: (panelIndex, isExpanded) {
                _onExpansion(panelIndex);
                // setState(() {
                //   _isOpenList[panelIndex] = !isExpanded;
                // });

                // setState(() {
                //   for (int i = 0; i < _isOpenList.length; i++) {
                //     if (i == panelIndex) {
                //       _isOpenList[i] = !_isOpenList[i];
                //       if (_isOpenList[panelIndex]) {
                //         var item = _panels.removeAt(panelIndex);
                //         _panels.insert(0, item);
                //       }
                //     } else {
                //       _isOpenList[i] = false;
                //     }
                //   }
                // });
              },
              children: panels,
              dividerColor: AppColors.tertiaryColor.withOpacity(.2),
              elevation: AppSize.v0,
            ),
          ),

          // SizedBox(
          //   height: 600,
          //   child: ListView.separated(
          //     separatorBuilder: (context, index) => Divider(),
          //     itemCount: title.length,
          //     itemBuilder: (context, index) {
          //       return ExpansionTile(

          //         // trailing: SvgPicture.asset(
          //         //   AppAssets.forward,
          //         // ),

          //         title: Text(
          //           title[index],
          //         ),
          //         children: [
          //           Container(
          //             height: 50,
          //           ),
          //           Container(
          //             height: 50,
          //           ),
          //           Container(
          //             height: 50,
          //             child: Text(
          //               'kkkkkkkkkkkkkkkkdddddddddd',
          //             ),
          //           ),
          //         ],
          //         onExpansionChanged: (value) {},
          //       );
          //     },
          //   ),
          // ),

          Theme(
            data: ThemeData(
              dividerTheme: Theme.of(context).dividerTheme.copyWith(
                    color: AppColors.tertiaryColor.withOpacity(.1),
                  ),
            ),
            child: const Divider(),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            AppString.attachment,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 30,
            ),
            child: Container(
              height: 111,
              width: 389,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColors.secondaryColor.withOpacity(.15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppAssets.pic,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 130,
                        top: 40,
                      ),
                      child: SvgPicture.asset(
                        AppAssets.attachment,
                        // height: 20.61,
                        // width: 19.44,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BanckBody extends StatelessWidget {
  const BanckBody({super.key});

  @override
  Widget build(BuildContext context) {
    var accountHolderController = TextEditingController();
    var acountgNumberController = TextEditingController();
    var transactionRef = TextEditingController();
    var expController = TextEditingController();
    return Container(
      height: 314,
      width: 393,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          2,
        ),
        color: AppColors.payColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                2,
              ),
              color: AppColors.tertiaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 13.5,
                    color: AppColors.whiteColor,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      AppString.creditTitle,
                      style: getRegulerPoppins(
                        color: AppColors.whiteColor,
                        fontSize: AppFontSize.s9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextFormField(
              controller: accountHolderController,
              textInputAction: TextInputAction.next,
              style: getRegulerPoppins(
                color: AppColors.tertiaryColor,
                fontSize: 11,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tertiaryColor,
                  ),
                ),
                hintText: AppString.accountHolder,
                hintStyle: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextFormField(
              controller: acountgNumberController,
              textInputAction: TextInputAction.next,
              style: getRegulerPoppins(
                color: AppColors.tertiaryColor,
                fontSize: 11,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tertiaryColor,
                  ),
                ),
                hintText: AppString.accountHolder,
                hintStyle: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 149,
                  child: TextFormField(
                    controller: expController,
                    textInputAction: TextInputAction.next,
                    style: getRegulerPoppins(
                      color: AppColors.tertiaryColor,
                      fontSize: 11,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffix: SvgPicture.asset(
                        AppAssets.dwon,
                        // color: AppColors.tertiaryColor,
                        height: 10,
                        width: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.tertiaryColor,
                        ),
                      ),
                      hintText: AppString.exp,
                      hintStyle: getRegulerPoppins(
                        color: AppColors.tertiaryColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 149,
                  child: TextFormField(
                    controller: transactionRef,
                    textInputAction: TextInputAction.next,
                    style: getRegulerPoppins(
                      color: AppColors.tertiaryColor,
                      fontSize: 11,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.tertiaryColor,
                        ),
                      ),
                      hintText: AppString.transactionRef,
                      hintStyle: getRegulerPoppins(
                        color: AppColors.tertiaryColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 35,
            ),
            child: Center(
              child: Text(
                AppString.charged,
                style: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 9,
                ),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(393, 45),
                  textStyle: getSemiBoldPoppins(
                    color: AppColors.elevtextColor,
                    fontSize: AppFontSize.s14,
                  ),
                  alignment: Alignment.centerRight,
                  elevation: AppSize.v0,
                  backgroundColor: AppColors.tertiaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  AppString.orderCheck,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlharamBody extends StatelessWidget {
  const AlharamBody({super.key});

  @override
  Widget build(BuildContext context) {
    var accountHolderController = TextEditingController();
    var branchController = TextEditingController();
    var refController = TextEditingController();
    var expController = TextEditingController();
    return Container(
      height: 314,
      width: 393,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          2,
        ),
        color: AppColors.payColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                2,
              ),
              color: AppColors.tertiaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 13.5,
                    color: AppColors.whiteColor,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      AppString.creditTitle,
                      style: getRegulerPoppins(
                        color: AppColors.whiteColor,
                        fontSize: AppFontSize.s9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextFormField(
              controller: accountHolderController,
              textInputAction: TextInputAction.next,
              style: getRegulerPoppins(
                color: AppColors.tertiaryColor,
                fontSize: 11,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tertiaryColor,
                  ),
                ),
                hintText: AppString.accountHolder,
                hintStyle: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextFormField(
              controller: branchController,
              textInputAction: TextInputAction.next,
              style: getRegulerPoppins(
                color: AppColors.tertiaryColor,
                fontSize: 11,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tertiaryColor,
                  ),
                ),
                hintText: AppString.branch,
                hintStyle: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 149,
                  child: TextFormField(
                    controller: expController,
                    textInputAction: TextInputAction.next,
                    style: getRegulerPoppins(
                      color: AppColors.tertiaryColor,
                      fontSize: 11,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffix: SvgPicture.asset(
                        AppAssets.dwon,
                        // color: AppColors.tertiaryColor,
                        height: 10,
                        width: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.tertiaryColor,
                        ),
                      ),
                      hintText: AppString.exp,
                      hintStyle: getRegulerPoppins(
                        color: AppColors.tertiaryColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 149,
                  child: TextFormField(
                    controller: refController,
                    textInputAction: TextInputAction.next,
                    style: getRegulerPoppins(
                      color: AppColors.tertiaryColor,
                      fontSize: 11,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.tertiaryColor,
                        ),
                      ),
                      hintText: AppString.ref,
                      hintStyle: getRegulerPoppins(
                        color: AppColors.tertiaryColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 35,
            ),
            child: Center(
              child: Text(
                AppString.charged,
                style: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 9,
                ),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(393, 45),
                  textStyle: getSemiBoldPoppins(
                    color: AppColors.elevtextColor,
                    fontSize: AppFontSize.s14,
                  ),
                  alignment: Alignment.centerRight,
                  elevation: AppSize.v0,
                  backgroundColor: AppColors.tertiaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  AppString.orderCheck,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CreditBody extends StatelessWidget {
  const CreditBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cardNumberController = TextEditingController();
    var nameOnCardController = TextEditingController();
    var expController = TextEditingController();
    var cvvController = TextEditingController();
    return Container(
      height: 314,
      width: 393,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          2,
        ),
        color: AppColors.payColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                2,
              ),
              color: AppColors.tertiaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    size: 13.5,
                    color: AppColors.whiteColor,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      AppString.creditTitle,
                      style: getRegulerPoppins(
                        color: AppColors.whiteColor,
                        fontSize: AppFontSize.s9,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    right: 10,
                  ),
                  child: Image.asset(
                    AppAssets.credit1,
                  ),
                ),
                Image.asset(
                  AppAssets.credit2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Image.asset(
                    AppAssets.credit3,
                  ),
                ),
                Image.asset(
                  AppAssets.credit4,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextFormField(
              controller: cardNumberController,
              textInputAction: TextInputAction.next,
              style: getRegulerPoppins(
                color: AppColors.tertiaryColor,
                fontSize: 11,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tertiaryColor,
                  ),
                ),
                hintText: AppString.cardNumber,
                hintStyle: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextFormField(
              controller: nameOnCardController,
              textInputAction: TextInputAction.next,
              style: getRegulerPoppins(
                color: AppColors.tertiaryColor,
                fontSize: 11,
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.tertiaryColor,
                  ),
                ),
                hintText: AppString.nameOnCard,
                hintStyle: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 149,
                  child: TextFormField(
                    controller: expController,
                    textInputAction: TextInputAction.next,
                    style: getRegulerPoppins(
                      color: AppColors.tertiaryColor,
                      fontSize: 11,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffix: SvgPicture.asset(
                        AppAssets.dwon,
                        // color: AppColors.tertiaryColor,
                        height: 10,
                        width: 10,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.tertiaryColor,
                        ),
                      ),
                      hintText: AppString.exp,
                      hintStyle: getRegulerPoppins(
                        color: AppColors.tertiaryColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 149,
                  child: TextFormField(
                    controller: cvvController,
                    textInputAction: TextInputAction.next,
                    style: getRegulerPoppins(
                      color: AppColors.tertiaryColor,
                      fontSize: 11,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.tertiaryColor,
                        ),
                      ),
                      hintText: AppString.cvv,
                      hintStyle: getRegulerPoppins(
                        color: AppColors.tertiaryColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 22,
            ),
            child: Center(
              child: Text(
                AppString.charged,
                style: getRegulerPoppins(
                  color: AppColors.tertiaryColor,
                  fontSize: 9,
                ),
              ),
            ),
          ),
          Theme(
            data: ThemeData(
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(393, 45),
                  textStyle: getSemiBoldPoppins(
                    color: AppColors.elevtextColor,
                    fontSize: AppFontSize.s14,
                  ),
                  alignment: Alignment.centerRight,
                  elevation: AppSize.v0,
                  backgroundColor: AppColors.tertiaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  AppString.orderCheck,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
