import 'package:flutter/material.dart';
import '../../constants/strings.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      // backgroundColor:
      // lightMode ? black : const Color(0xff042a49),
      body: Center(
          child: lightMode
              ? Image.asset(
                  'assets/images/splsh.gif',
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
                )
              : Image.asset(
                  'assets/images/splsh.gif',
                    height: MediaQuery.of(context).size.height,
                  fit: BoxFit.fitHeight,
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
