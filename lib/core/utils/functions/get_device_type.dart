import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/enums/device_type.dart';

// ignore: avoid_types_as_parameter_names, non_constant_identifier_names
MyDeviceType getDeviceType(MediaQueryData) {
  Orientation orientation = MediaQueryData.orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = MediaQueryData.size.height;
  } else {
    width = MediaQueryData.size.width;
  }
  if (width >= 950) {
    return MyDeviceType.desktop;
  } else if (width >= 60) {
    return MyDeviceType.tablet;
  } else {
    return MyDeviceType.mobile;
  }
}
