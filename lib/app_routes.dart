import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:obelix_agency/presentaion/screen/contact_us/contact_us.dart';
import 'package:obelix_agency/presentaion/screen/customers/customers.dart';
import 'package:obelix_agency/presentaion/screen/home_test.dart';
import 'package:obelix_agency/presentaion/screen/nav_bottom_bar/nav_bottom_bar.dart';
import 'package:obelix_agency/presentaion/screen/partner/partner.dart';
import 'bussiness_logic/navigation_bottom/nav_bar_cubit.dart';
import 'constants/strings.dart';
import 'presentaion/screen/services/servies.dart';

class AppRouter {

  Route? generateRouts(RouteSettings settings){
    switch(settings.name){
     
      case navBar:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (BuildContext context) => NavBarCubit(),
              child: const NavigationBottom(),
            ) );
        case service:
        return MaterialPageRoute(
            builder: (_) =>
                const OurServices(),);

        case customers:
        return MaterialPageRoute(
            builder: (_) =>
                const Customers(),);

        case partner:
        return MaterialPageRoute(
            builder: (_) =>
                const Partner(),);

        case contact:
        return MaterialPageRoute(
            builder: (_) =>
                const ContactUs(),);


        case home:
        return MaterialPageRoute(
            builder: (_) =>
                const HomeTest(),);
    }
  }
}