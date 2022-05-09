import 'package:flutter/material.dart';
import 'package:obelix_agency/constants/color.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/lists.dart';
import '../../widgets/card_brif/card_brif.dart';
import '../../widgets/d_prosses_card/prosses_card.dart';
import '../../widgets/general_widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Row(
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
                  fontSize: 25, fontWeight: FontWeight.bold, color: yellow),
            ),
            Text(
              "Agency",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: black),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                height: height * .5,
                width: width * 0.26,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "Some Facts",
                          style: TextStyle(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                              color: black),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "87",
                            style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                color: yellow),
                          ),
                          Text(
                            "Satisfied\nClients",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                color: black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "150",
                            style: TextStyle(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                color: yellow),
                          ),
                          Text(
                            "Projects\nCompleted",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                color: black),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "+56000",
                            style: TextStyle(
                                fontSize: 26.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                color: yellow),
                          ),
                          Text(
                            "Lines\nof Code",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                                color: black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.01,
              ),
              Container(
                height: height * .45,
                width: width * 0.73,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    color: yellow),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: brifList.length,
                    itemBuilder: (context, index) {
                      return breifing(
                          context, brifList[index], brifSubList[index]);
                    },
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              divider(),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: white),
              ),
              Row(
                children: [
                  Container(
                    height: height * .4,
                    width: width * .7,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: black),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: prossesName.length,
                        itemBuilder: (context, index) {
                          return Ds(
                              context, processImage[index], prossesName[index]);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    height: height * .35,
                    width: width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            topRight: Radius.circular(25)),
                        color: white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            children: [
                              Text(
                                "Our\n6-D\nProcess",
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
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
