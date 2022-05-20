import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'app_routes.dart';
import 'bussiness_logic/navigation_bottom/nav_bar_cubit.dart';
import 'presentaion/screen/nav_bottom_bar/nav_bottom_bar.dart';
import 'presentaion/widgets/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
      return FutureBuilder(
          future: Init.instance.initialize(),
          builder: (context, AsyncSnapshot snapshot) {
            // Show splash screen while waiting for app resources to load:
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Splash(),
              );
            } else {
              // Loading is done, return the app:
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: BlocProvider(
                  create: (BuildContext context) => NavBarCubit(),
                  child: const NavigationBottom(),
                ),
              );
            }
          });
    });
  }
}
