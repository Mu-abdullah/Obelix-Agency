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



Widget cashedImaged(String nImage){
  return CachedNetworkImage(
    imageUrl: nImage,
    progressIndicatorBuilder: (context, url, downloadProgress) =>
        CircularProgressIndicator(value: downloadProgress.progress),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
}
