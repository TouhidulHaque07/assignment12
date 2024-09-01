import 'package:assignment9/presentation/utils/screen_utilis.dart';
import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({super.key,
      required this.mobile,
      required this.desktop,
      this.tablet,
      });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;


  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    final DeviceType deviceType=ScreenUtilis.getDeviceType(size.width);

    if(deviceType==DeviceType.mobile){
      return mobile;
    }
    else if (deviceType==DeviceType.tabet){
      return tablet??mobile;
    }
    return desktop;

  }
}
