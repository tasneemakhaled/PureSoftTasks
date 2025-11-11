import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/functions/get_device_type.dart';
import 'package:fruit_app/core/utils/models/device_info.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.builder});
  final Widget Function(BuildContext context, DeviceInfo) builder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaQueryData = MediaQuery.of(context);
        return builder(
          context,
          DeviceInfo(
            orientation: mediaQueryData.orientation,
            screenWidth: mediaQueryData.size.width,
            screenHeight: mediaQueryData.size.height,
            deviceType: getDeviceType(mediaQueryData),
            localWidth: constraints.maxWidth,
            localHeight: constraints.maxHeight,
          ),
        );
      },
    );
  }
}
