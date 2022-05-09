import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:obelix_agency/constants/color.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:sizer/sizer.dart';

class HomeTest extends StatelessWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Container(
          height: height,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
            color: black.withOpacity(.5),
            backgroundBlendMode: BlendMode.hardLight,
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        backgroundColor: black,
                        child: Image.asset("assets/images/logo.png"),
                      ),
                    ),
                    Text(
                      "Obelix ",
                      style: TextStyle(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                          color: yellow),
                    ),
                    Text(
                      "Agency",
                      style: TextStyle(
                        fontSize: 36.sp,
                        fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                        fontWeight: FontWeight.bold,
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    ShowUpAnimation(
                      animationDuration: const Duration(seconds: 2),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.vertical,
                      offset: 1.5,
                      child: Container(
                        height: height * .20,
                        width: width * .30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: black.withOpacity(.5),
                          backgroundBlendMode: BlendMode.darken,
                          image: const DecorationImage(
                              image: AssetImage("assets/images/start.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff1b1b1b), BlendMode.hardLight)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  "About",
                                  style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                      color: yellow),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * .01,
                    ),
                    ShowUpAnimation(
                      animationDuration: const Duration(seconds: 2),
                      curve: Curves.fastLinearToSlowEaseIn,
                      direction: Direction.vertical,
                      offset: 1.5,
                      child: Container(
                        height: height * .20,
                        width: width * .64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: black.withOpacity(0.5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  "OBELIX is an integrated marketing agency We are schooled in the creativity and proficiency to offer our clients the ingenuity & innovation.",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                      color: white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    ShowUpAnimation(
                      animationDuration: const Duration(seconds: 2),
                      curve: Curves.slowMiddle,
                      direction: Direction.vertical,
                      offset: 1.5,
                      child: Container(
                        height: height * .20,
                        width: width * .64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: black.withOpacity(0.5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  "Our central mission is to assist our clients with beating key business challenges by giving inventive smart business solutions that increment productivity and execution greatness.",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                      color: white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * .01,
                    ),
                    ShowUpAnimation(
                      animationDuration: const Duration(seconds: 2),
                      curve: Curves.slowMiddle,
                      direction: Direction.vertical,
                      offset: 1.5,
                      child: Container(
                        height: height * .20,
                        width: width * .30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: black.withOpacity(.5),
                          backgroundBlendMode: BlendMode.darken,
                          image: const DecorationImage(
                              image: AssetImage("assets/images/mission.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff1b1b1b), BlendMode.hardLight)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  "Mission",
                                  style: TextStyle(
                                      fontSize: 21.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                      color: yellow),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: [
                    ShowUpAnimation(
                      animationDuration: const Duration(seconds: 2),
                      curve: Curves.easeInOutSine,
                      direction: Direction.vertical,
                      offset: 1.5,
                      child: Container(
                        height: height * .20,
                        width: width * .30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: black.withOpacity(.5),
                          backgroundBlendMode: BlendMode.darken,
                          image: const DecorationImage(
                              image: AssetImage("assets/images/vision.jpg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Color(0xff1b1b1b), BlendMode.hardLight)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  "Vision",
                                  style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                      color: yellow),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * .01,
                    ),
                    ShowUpAnimation(
                      animationDuration: const Duration(seconds: 2),
                      curve: Curves.easeInOutSine,
                      direction: Direction.vertical,
                      offset: 1.5,
                      child: Container(
                        height: height * .20,
                        width: width * .64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: black.withOpacity(0.5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Center(
                                child: Text(
                                  "Shape the future of the Business Industries by setting out remarkable worth and opportunity for our clients, employees, investors & business partners.",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                      color: white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Our 6-D Process",
                          style: TextStyle(
                              fontSize: 36.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                              color: yellow),
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        Container(
                          width: width * .6,
                          height: height * .005,
                          color: black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Discover",
                                style: TextStyle(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                    color: black),
                              ),
                              SizedBox(
                                height: height * .05,
                              ),
                              Text(
                                "Design",
                                style: TextStyle(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                    color: black),
                              ),
                              SizedBox(
                                height: height * .05,
                              ),
                              Text(
                                "Deploy",
                                style: TextStyle(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                    color: black),
                              ),
                              SizedBox(
                                height: height * .05,
                              ),
                            ],
                          ),
                        ),
                        // Container(
                        //   height: height*.3,
                        //   width: width * .01,
                        //   color: black,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * .05,
                              ),
                              Text(
                                "Define",
                                style: TextStyle(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                    color: black),
                              ),
                              SizedBox(
                                height: height * .05,
                              ),
                              Text(
                                "Develop",
                                style: TextStyle(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                    color: black),
                              ),
                              SizedBox(
                                height: height * .05,
                              ),
                              Text(
                                "Deliver",
                                style: TextStyle(
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                    color: black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * .05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
