
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../bussiness_logic/navigation_bottom/nav_bar_cubit.dart';
import '../../../constants/color.dart';

class NavigationBottom extends StatelessWidget {
  const NavigationBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)),
    );
    return BlocConsumer<NavBarCubit, NavBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          NavBarCubit cubit = NavBarCubit.get(context);
          return Scaffold(

            bottomNavigationBar: SalomonBottomBar(
              items: cubit.bottomItems,
              onTap: cubit.changeBottomNav,
              currentIndex: cubit.currentIndex,
              selectedItemColor: yellow,
              unselectedItemColor: black,
            ),
            body: cubit.screens[cubit.currentIndex],

          );
        });
  }
}
