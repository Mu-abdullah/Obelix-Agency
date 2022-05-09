import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:obelix_agency/constants/color.dart';
import 'package:sizer/sizer.dart';

Widget Ds(context, String nImage, String sText) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color:white,
      elevation: 8,
      shadowColor: black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.01,
                  width: MediaQuery.of(context).size.width * 0.2,
                  color: yellow,
                ),
              ),
            ],
          ),
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  sText,
                  style: TextStyle(fontSize:   28.sp,
                    fontWeight: FontWeight.bold,
                    color: black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            CachedNetworkImage(
              imageUrl: nImage,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),

        ],
      ),
    ),
  );
}
