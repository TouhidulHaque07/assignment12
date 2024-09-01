import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => IntroApp(), // Wrap your app
  ),);
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery= MediaQuery.of(context);

    print(mediaQuery.size);
    print(mediaQuery.size.width);
    print(mediaQuery.size.height);
    print(mediaQuery.size.aspectRatio);
    print(mediaQuery.size.flipped);;
    print(mediaQuery.devicePixelRatio);

    if(mediaQuery.size.width<640){
      print('This is Phone');
    }else if(mediaQuery.size.width>640){
      print('This is Tab');
    }else {
      print('This is Desktop');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
     // body:
      // OrientationBuilder(
      //   builder: (context, Orientation orientation) {
      //    
      //     if(orientation==Orientation.portrait){
      //       return Column(
      //         children: [
      //           Wrap(
      //             alignment: WrapAlignment.center,
      //             crossAxisAlignment: WrapCrossAlignment.center,
      //             spacing: 16,
      //             children: [
      //               Text('jsdkfjkhg'),
      //               Text('jsdjkdfgjd'),
      //               Text('jsdkfjkhgldfkgg'),
      //               Text('jsdkfjkhmbkfd  bldfg'),
      //               Text('jsdkfjkhg mfgdf dfklm'),
      //               Text('jsdkfjkhg dfgmdfkl '),
      //             ],
      //           ),
      //
      //         ],
      //
      //       );
      //     }
      //     else{
      //       return Center(
      //         child: Text('This is Too Big'),
      //       );
      //     }
      //   
      //    
      //    
      //    
      //   }
      // ),
     body:  LayoutBuilder(
          builder: (context, BoxConstraints constraints ){
            if(constraints.maxWidth<640){
              return Text('This is Phone');
                  }
            else if(constraints.maxWidth>640 && constraints.maxWidth<1008){
              return Text('This is Tab');
                  }
            else {
              return Text('This is too big');
                  }
    }
    ));
  }
}


