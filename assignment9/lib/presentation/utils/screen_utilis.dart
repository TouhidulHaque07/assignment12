enum DeviceType{
      mobile,
      tabet,
      desktop

}



class ScreenUtilis{

  static const double mobilemaxsize=640;
  static const double tabletmaxsize=1008;
  static const double desktopmaxsize=1008;

  static DeviceType getDeviceType(double width){

    if(width<ScreenUtilis.mobilemaxsize){
      return DeviceType.mobile;
    }
    else if (width>=ScreenUtilis.mobilemaxsize && width<ScreenUtilis.tabletmaxsize){
      return DeviceType.tabet;
    }
    return DeviceType.desktop;

  }

}