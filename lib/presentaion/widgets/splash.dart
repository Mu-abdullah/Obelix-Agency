import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:obelix_agency/constants/color.dart';
import '../../constants/strings.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor: yellow,
      // backgroundColor:
      // lightMode ? black : const Color(0xff042a49),
      body: Center(
          child: lightMode
              ? Image.asset(
                  'assets/images/splsh1.gif',
                  height: MediaQuery.of(context).size.height,
                )
              : Image.asset(
                  'assets/images/splsh1.gif',
                  height: MediaQuery.of(context).size.height,
                )),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(
      const Duration(seconds: 4),
    );
  }
}
