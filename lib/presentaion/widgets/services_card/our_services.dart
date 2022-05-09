import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:obelix_agency/constants/color.dart';

import '../bottom_sheet/bottom_sheet.dart';

Widget myServices(context, {required String nImage, required String mText,}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: InkWell(
        child: Column(
          children: [
            CachedNetworkImage(
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.width * 0.25,
              imageUrl: nImage,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Text(
              mText,
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold,
                fontFamily: 'Berlin-Sans-FB-Demi-Bold',
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
