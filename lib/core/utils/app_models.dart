import 'package:accessories_store/core/utils/app_enums.dart';
import 'package:flutter/cupertino.dart';

class DeviceInfoModel {
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenWidth;
  final double screenHieght;
  final double localWidth;
  final double localHeight;

  const DeviceInfoModel({
    required this.orientation,
    required this.deviceType,
    required this.screenWidth,
    required this.screenHieght,
    required this.localWidth,
    required this.localHeight,
  });
}
