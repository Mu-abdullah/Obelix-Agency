import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

// import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:obelix_agency/constants/color.dart';
import 'package:sizer/sizer.dart';

Widget divider() {
  return Divider(
    height: 20,
    thickness: 5,
    endIndent: 30,
    indent: 30,
    color: yellow.withOpacity(0.3),
  );
}

Widget oneOfOurFriend(context) {
  return Container(
    height: MediaQuery.of(context).size.height * .15,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Stack(
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height * .035,
            left: 0,
            child: Text(
              "Be one of our customers friends...",
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            )),
        Positioned(
          top: MediaQuery.of(context).size.height * .048,
          left: MediaQuery.of(context).size.width * .38,
          child:
              // Transform.rotate(
              // angle: -math.pi / 4,
              // child:
              Container(
            height: MediaQuery.of(context).size.height * 0.01,
            width: MediaQuery.of(context).size.width * 0.25,
            color: red.withOpacity(.5),
          ),
        ),
        // ),
      ],
    ),
  );
}


Widget cashedImaged(String nImage){
  return CachedNetworkImage(
    imageUrl: nImage,
    progressIndicatorBuilder: (context, url, downloadProgress) =>
        CircularProgressIndicator(value: downloadProgress.progress),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
}
