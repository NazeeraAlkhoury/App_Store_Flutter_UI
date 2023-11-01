// ignore_for_file: avoid_print

import 'package:accessories_store/core/utils/app_widgets.dart';
import 'package:flutter/material.dart';

class Testscreen extends StatefulWidget {
  const Testscreen({super.key});

  @override
  State<Testscreen> createState() => _TestscreenState();
}

class _TestscreenState extends State<Testscreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenHeight = mediaQueryData.size.height;
    double screenWidth = mediaQueryData.size.width;
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: screenWidth / 2,
          height: screenHeight / 2,
          child: Center(
            child: DeviceInfoCustomWidget(builder: (context, deviceInfoModel) {
              // print(deviceInfoModel.deviceType);
              // print('orientation is ${deviceInfoModel.orientation}');
              // print('screen height is ${deviceInfoModel.height}');
              // print('screen width is ${deviceInfoModel.width}');
              // print('local height is ${deviceInfoModel.localHeight}');
              // print('local width is ${deviceInfoModel.localWidth}');
              return Container(
                color: Colors.pink,
                height: deviceInfoModel.localHeight / 2,
                width: deviceInfoModel.localWidth / 2,
              );
            }),
            //  LayoutBuilder(
            //   builder: (BuildContext context, BoxConstraints constraints) {
            //     DeviceType deviceType = getDeviceType(mediaQueryData);
            //     double localHieght = constraints.maxHeight;
            //     double localWidth = constraints.maxWidth;
            //     print(deviceType);
            //     print('orientation is ${mediaQueryData.orientation}');
            //     print('screen height is $screenHeight');
            //     print('screen width is $screenWidth');
            //     print('local height is $localHieght');
            //     print('local width is $localWidth');

            //     return Container(
            //       color: Colors.pink,
            //       height: localHieght / 2,
            //       width: localWidth / 2,
            //     );
            //   },
            // ),
          ),
        ),
      ),
    );
  }
}
