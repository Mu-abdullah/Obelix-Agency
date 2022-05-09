import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:obelix_agency/presentaion/screen/home_test.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../presentaion/screen/contact_us/contact_us.dart';
import '../../presentaion/screen/customers/customers.dart';
import '../../presentaion/screen/partner/partner.dart';
import '../../presentaion/screen/services/servies.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());

  static NavBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens =  [
    const HomeTest(),
    const OurServices(),
    const Customers(),
    const Partner(),
    const ContactUs(),

  ];
  List<SalomonBottomBarItem> bottomItems = [
    SalomonBottomBarItem(
      icon: const Icon(Icons.home),
      title: const Text("Obelix"),
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.volunteer_activism),
      title: const Text("Services"),
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.supervisor_account_sharp),
      title: const Text("Customers"),
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.supervisor_account_outlined),
      title: const Text("Partners"),
    ),
    SalomonBottomBarItem(
      icon: const Icon(Icons.call),
      title: const Text("Contact Us"),
    ),

  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    if (currentIndex == 1) {
      const HomeTest();
    }
    else if (currentIndex == 2) {
      const OurServices();
    }
    else if (currentIndex == 3) {
      const Customers();
    }
    else if (currentIndex == 4) {
      const Partner();
    }
    else if (currentIndex == 4) {
      const ContactUs();
    }
    emit(BottomNavState());
  }
}
