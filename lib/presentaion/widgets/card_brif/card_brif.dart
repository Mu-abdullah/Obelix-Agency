
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/color.dart';

Widget breifing(context, String mText, String sText) {
  return SizedBox(
     height: MediaQuery.of(context).size.height * 0.23,
     width: MediaQuery.of(context).size.width * 0.60,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: white,
        shadowColor: black,
        child: Wrap(
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
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      mText,
                      style: TextStyle(
                          fontSize:  28.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Berlin-Sans-FB-Demi-Bold',
                          color: yellow),
                    ),
                  ),
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        sText,
                        style: TextStyle(
                          fontSize:  16.sp,
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
      ),
    ),
  );
}
