

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/color.dart';

Widget servicesCard (context,String question,String answer,){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: yellow,
    ),
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.01,
                width: MediaQuery.of(context).size.width * 0.2,
                color: black,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  question,
                  style: TextStyle(
                      fontSize:   26.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                      color: white),
                ),
              ),
            ),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    answer,
                    style: TextStyle(
                      fontSize:  18.sp,
                      fontWeight: FontWeight.bold,
                      color: black,
                    ),
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